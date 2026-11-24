#!/usr/bin/env bash
# Run from the directory containing the original paired FASTQ.gz files.
# Naming convention: SAMPLE_1.fastq.gz and SAMPLE_2.fastq.gz.
set -euo pipefail
shopt -s nullglob

REPO_ROOT=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)

JAR="${TRIMMOMATIC_JAR:?Set TRIMMOMATIC_JAR to the path of trimmomatic-0.39.jar}"
ADAPTER="${TRIMMOMATIC_ADAPTERS:-$REPO_ROOT/qc/logs/adapters_used.fa}"
OUT="${OUT_DIR:-$REPO_ROOT/work/trimmed}"

# Validate all inputs before starting any sample.
for tool in java python3 taskset; do
    command -v "$tool" >/dev/null || { echo "Missing command: $tool" >&2; exit 1; }
done
[[ -r "$JAR" && -r "$ADAPTER" ]] || { echo "JAR or adapter file is not readable." >&2; exit 1; }

all_fastqs=(./*.fastq.gz)
forward_fastqs=(./*_1.fastq.gz)
[[ ${#forward_fastqs[@]} -gt 0 ]] || { echo "No *_1.fastq.gz files in the current directory." >&2; exit 1; }
for file in "${all_fastqs[@]}"; do
    case "$file" in
        *_1.fastq.gz) mate="${file%_1.fastq.gz}_2.fastq.gz" ;;
        *_2.fastq.gz) mate="${file%_2.fastq.gz}_1.fastq.gz" ;;
        *) echo "Unrecognised FASTQ name: $file; expected *_1.fastq.gz or *_2.fastq.gz." >&2; exit 1 ;;
    esac
    [[ -s "$file" && -s "$mate" ]] || { echo "Missing or empty paired input: $file / $mate" >&2; exit 1; }
done
[[ ! -e "$OUT" ]] || { echo "Output directory already exists; preserved: $OUT" >&2; exit 1; }

# Pin Java and its child threads to at most two allowed CPU cores.
CPUS=$(python3 -c 'import os; print(",".join(map(str, sorted(os.sched_getaffinity(0))[:2])))')
mkdir -p "$OUT/logs"
cp "$ADAPTER" "$OUT/logs/adapters_used.fa"
printf 'Input directory: %s\nCPU IDs: %s\nParameters: ILLUMINACLIP:adapters_used.fa:2:40:15 SLIDINGWINDOW:4:20 MINLEN:25\n' \
    "$PWD" "$CPUS" > "$OUT/logs/run_info.txt"
java -XX:ActiveProcessorCount=2 -jar "$JAR" -version >> "$OUT/logs/run_info.txt" 2>&1

for infile in "${forward_fastqs[@]}"; do
    base=$(basename "$infile" _1.fastq.gz)
    in1="./${base}_1.fastq.gz"
    in2="./${base}_2.fastq.gz"
    echo ">> Processing $base ..."

    taskset -c "$CPUS" java -XX:ActiveProcessorCount=2 -Xmx2g -jar "$JAR" \
        PE -threads 2 -phred33 \
        "$in1" "$in2" \
        "$OUT/${base}_1P.fastq.gz" "$OUT/${base}_1U.fastq.gz" \
        "$OUT/${base}_2P.fastq.gz" "$OUT/${base}_2U.fastq.gz" \
        "ILLUMINACLIP:$OUT/logs/adapters_used.fa:2:40:15" \
        SLIDINGWINDOW:4:20 MINLEN:25 \
        > "$OUT/logs/${base}.stdout.log" 2> "$OUT/logs/${base}.log"

    cat "$OUT/logs/${base}.log"
done

printf 'ALL TRIMMING FINISHED: %s pairs of input files.\nOutput: %s\n' "${#forward_fastqs[@]}" "$OUT"
