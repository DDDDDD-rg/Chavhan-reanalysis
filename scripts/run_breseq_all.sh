#!/usr/bin/env bash
# Run from the folder containing *_1P.fastq.gz and *_2P.fastq.gz.
# This batch uses paired-surviving reads only; *_1U/*_2U are retained, not used.
set -euo pipefail
shopt -s nullglob

REPO_ROOT=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)

PROJECT="${PROJECT_ROOT:-$REPO_ROOT}"
REFERENCE="${BRESEQ_REFERENCE:-$PROJECT/reference/NC_000913.3.gbk}"
OUT="${BRESEQ_OUTPUT:-$PROJECT/work/breseq}"
INPUT_DIR="$PWD"
FREQUENCY=0.70

export OMP_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export MKL_NUM_THREADS=1

for tool in breseq bowtie2 Rscript python3 taskset; do
    command -v "$tool" >/dev/null || {
        echo "Missing $tool. Activate your breseq_env before running this script." >&2
        exit 1
    }
done
[[ -s "$REFERENCE" ]] || { echo "Missing reference: $REFERENCE" >&2; exit 1; }

# Validate every pair before creating output or running an analysis.
forward=(./*_1P.fastq.gz)
reverse=(./*_2P.fastq.gz)
unpaired=(./*_1U.fastq.gz ./*_2U.fastq.gz)
[[ ${#forward[@]} -gt 0 ]] || { echo "No *_1P.fastq.gz files in $INPUT_DIR" >&2; exit 1; }
for file in "${forward[@]}"; do
    mate="${file%_1P.fastq.gz}_2P.fastq.gz"
    [[ -s "$file" && -s "$mate" ]] || { echo "Missing or empty paired input: $file / $mate" >&2; exit 1; }
done
for file in "${reverse[@]}"; do
    mate="${file%_2P.fastq.gz}_1P.fastq.gz"
    [[ -s "$file" && -s "$mate" ]] || { echo "Missing or empty paired input: $file / $mate" >&2; exit 1; }
done
[[ ! -e "$OUT" ]] || { echo "Output already exists; preserved: $OUT" >&2; exit 1; }
HELP_TEXT=$(breseq -h 2>&1 || true)
[[ "$HELP_TEXT" == *consensus-frequency-cutoff* ]] || {
    echo "This breseq does not advertise --consensus-frequency-cutoff." >&2; exit 1;
}

# Put Anc and S4 first when their known run IDs are present.
ordered=()
for run in SRR21566767 SRR21566762; do
    [[ ! -f "./${run}_1P.fastq.gz" ]] || ordered+=("./${run}_1P.fastq.gz")
done
for file in "${forward[@]}"; do
    case "$file" in
        ./SRR21566767_1P.fastq.gz|./SRR21566762_1P.fastq.gz) ;;
        *) ordered+=("$file") ;;
    esac
done

CPUS=$(python3 -c 'import os; print(",".join(map(str, sorted(os.sched_getaffinity(0))[:2])))')
THREADS=2
[[ "$CPUS" == *,* ]] || THREADS=1
mkdir -p "$OUT"
mkdir "$OUT/logs"
printf '%s\n' "$HELP_TEXT" > "$OUT/logs/breseq_help.txt"
cp "$0" "$OUT/logs/run_breseq_all.sh"
printf 'Input: %s\nReference: %s\nOutput: %s\nCPU IDs: %s\nFrequency: %s\n' \
    "$INPUT_DIR" "$REFERENCE" "$OUT" "$CPUS" "$FREQUENCY" > "$OUT/logs/batch_settings.txt"
printf 'sample\tinput_1\tinput_2\toutput_directory\n' > "$OUT/logs/samples_used.tsv"
for infile in "${ordered[@]}"; do
    run=$(basename "$infile" _1P.fastq.gz)
    printf '%s\t%s/%s_1P.fastq.gz\t%s/%s_2P.fastq.gz\t%s/%s\n' \
        "$run" "$INPUT_DIR" "$run" "$INPUT_DIR" "$run" "$OUT" "$run" >> "$OUT/logs/samples_used.tsv"
done
echo "Samples: ${#ordered[@]}; unpaired files not used: ${#unpaired[@]}"
echo "Output: $OUT"

trap 'echo "BATCH STOPPED near line $LINENO. Inspect the batch and sample logs before continuing." >&2' ERR
for infile in "${ordered[@]}"; do
    run=$(basename "$infile" _1P.fastq.gz)
    echo ">> START $run: $(date -Is)"

    taskset -c "$CPUS" breseq \
        -r "$REFERENCE" \
        -o "$OUT/$run" \
        -n "$run" \
        -j "$THREADS" \
        --consensus-frequency-cutoff "$FREQUENCY" \
        "$INPUT_DIR/${run}_1P.fastq.gz" \
        "$INPUT_DIR/${run}_2P.fastq.gz" \
        > "$OUT/logs/${run}.log" 2>&1

    [[ -s "$OUT/$run/output/index.html" && -s "$OUT/$run/data/output.gd" ]] || {
        echo "Missing expected output for $run; batch stopped." >&2; exit 1;
    }
    echo ">> FINISHED $run: $(date -Is)"
done

echo "ALL BRESEQ FINISHED: ${#ordered[@]} samples."
