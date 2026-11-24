#=GENOME_DIFF	1.0
#=TITLE	SRR21566758
#=CREATED	18:27:10 14 Nov 2026
#=PROGRAM	breseq 0.40.2 
#=COMMAND	breseq -r reference/NC_000913.3.gbk -o work/breseq/SRR21566758 -n SRR21566758 -j 2 --consensus-frequency-cutoff 0.70 work/trimmed/SRR21566758_1P.fastq.gz work/trimmed/SRR21566758_2P.fastq.gz
#=REFSEQ	reference/NC_000913.3.gbk
#=READSEQ	work/trimmed/SRR21566758_1P.fastq.gz
#=READSEQ	work/trimmed/SRR21566758_2P.fastq.gz
#=CONVERTED-BASES	230233101
#=CONVERTED-READS	1727137
#=INPUT-BASES	230235999
#=INPUT-READS	1727150
#=MAPPED-BASES	227967833
#=MAPPED-READS	1710104
DEL	1	22,29	NC_000913	257908	776
SNP	2	12	NC_000913	296488	T
SNP	3	13	NC_000913	668036	G
DEL	4	24,34	NC_000913	1299499	1199
MOB	5	37,38	NC_000913	1784297	IS1	-1	9
DEL	6	14,15	NC_000913	2173363	2
SNP	7	16	NC_000913	2231119	C
SNP	8	17	NC_000913	2810757	G
INS	9	18	NC_000913	3560455	G
DEL	10	27,40	NC_000913	3986340	15
INS	11	20,21	NC_000913	4296381	GC
RA	12	.	NC_000913	296488	0	C	T	consensus_score=163.0	frequency=1	major_base=T	major_cov=22/23	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=22/23	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=22/23
RA	13	.	NC_000913	668036	0	A	G	consensus_score=118.3	frequency=1	major_base=G	major_cov=17/16	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=17/16	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=17/16
RA	14	.	NC_000913	2173363	0	C	.	consensus_score=161.2	frequency=1	major_base=.	major_cov=19/17	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=19/17	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=19/17
RA	15	.	NC_000913	2173364	0	C	.	consensus_score=161.2	frequency=1	major_base=.	major_cov=19/17	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=19/17	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=19/17
RA	16	.	NC_000913	2231119	0	T	C	consensus_score=200.0	frequency=1	major_base=C	major_cov=27/26	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=27/26	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=27/26
RA	17	.	NC_000913	2810757	0	A	G	consensus_score=118.7	frequency=1	major_base=G	major_cov=15/17	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=15/17	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=15/17
RA	18	.	NC_000913	3560455	1	.	G	consensus_score=167.5	frequency=1	major_base=G	major_cov=20/25	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=20/25	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=20/25
RA	19	.	NC_000913	4296060	0	C	T	bias_e_value=4109380	bias_p_value=0.885327	consensus_reject=FREQUENCY_CUTOFF	consensus_score=95.1	fisher_strand_p_value=1	frequency=2.174e-01	ks_quality_p_value=0.561087	major_base=C	major_cov=19/17	major_frequency=7.826e-01	minor_base=T	minor_cov=5/5	new_cov=5/5	polymorphism_frequency=2.174e-01	polymorphism_score=23.3	prediction=polymorphism	ref_cov=19/17	total_cov=24/22
RA	20	.	NC_000913	4296380	1	.	C	consensus_score=128.9	frequency=1	major_base=C	major_cov=17/19	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=17/19	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=17/19
RA	21	.	NC_000913	4296380	2	.	G	consensus_score=128.7	frequency=1	major_base=G	major_cov=17/19	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=17/19	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=17/19
MC	22	.	NC_000913	257908	258683	765	0	left_inside_cov=0	left_outside_cov=49	right_inside_cov=4	right_outside_cov=53
MC	23	.	NC_000913	788939	789979	0	0	left_inside_cov=12	left_outside_cov=13	right_inside_cov=0	right_outside_cov=54
MC	24	.	NC_000913	1299499	1300697	1198	0	left_inside_cov=0	left_outside_cov=38	right_inside_cov=0	right_outside_cov=38
MC	25	.	NC_000913	1978495	1979270	0	0	left_inside_cov=0	left_outside_cov=33	right_inside_cov=0	right_outside_cov=26
MC	26	.	NC_000913	3423740	3424514	494	275	left_inside_cov=12	left_outside_cov=13	right_inside_cov=12	right_outside_cov=14
MC	27	.	NC_000913	3986340	3986354	0	0	left_inside_cov=0	left_outside_cov=21	right_inside_cov=4	right_outside_cov=25
JC	28	.	NC_000913	1	1	NC_000913	4641652	-1	0	alignment_overlap=0	coverage_minus=21	coverage_plus=23	flanking_left=301	flanking_right=301	frequency=1	ignore=CIRCULAR_CHROMOSOME	junction_possible_overlap_registers=132	key=NC_000913__1__1__NC_000913__4641652__-1__0____301__301__0__0	max_left=238	max_left_minus=197	max_left_plus=238	max_min_left=121	max_min_left_minus=121	max_min_left_plus=86	max_min_right=65	max_min_right_minus=65	max_min_right_plus=56	max_pos_hash_score=264	max_right=241	max_right_minus=178	max_right_plus=241	neg_log10_pos_hash_p_value=0.3	new_junction_coverage=0.90	new_junction_read_count=44	polymorphism_frequency=1.000e+00	pos_hash_score=43	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=132	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=44
JC	29	.	NC_000913	257907	-1	NC_000913	258684	1	0	alignment_overlap=8	coverage_minus=28	coverage_plus=21	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=124	key=NC_000913__257907__-1__NC_000913__258676__1__8____301__301__0__0	max_left=180	max_left_minus=180	max_left_plus=169	max_min_left=111	max_min_left_minus=111	max_min_left_plus=103	max_min_right=121	max_min_right_minus=99	max_min_right_plus=121	max_pos_hash_score=248	max_right=244	max_right_minus=244	max_right_plus=186	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.07	new_junction_read_count=49	polymorphism_frequency=1.000e+00	pos_hash_score=46	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=8	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=124	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=49
JC	30	.	NC_000913	274674	1	NC_000913	274711	1	0	alignment_overlap=5	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=NA	junction_possible_overlap_registers=127	key=NC_000913__274674__1__NC_000913__274706__1__5____301__301__1__1	max_left=37	max_left_minus=37	max_left_plus=37	max_min_left=37	max_min_left_minus=37	max_min_left_plus=37	max_min_right=0	max_min_right_minus=0	max_min_right_plus=0	max_pos_hash_score=254	max_right=168	max_right_minus=112	max_right_plus=168	neg_log10_pos_hash_p_value=5.4	new_junction_coverage=0.09	new_junction_read_count=4	polymorphism_frequency=NA	pos_hash_score=4	prediction=unknown	reject=COVERAGE_EVENNESS_SKEW	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=5	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=4
JC	31	.	NC_000913	789980	1	NC_000913	4171849	-1	-54	alignment_overlap=-54	coverage_minus=12	coverage_plus=12	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=78	key=NC_000913__789980__1__NC_000913__4171849__-1__-54__CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG__301__301__0__0	max_left=217	max_left_minus=217	max_left_plus=135	max_min_left=70	max_min_left_minus=43	max_min_left_plus=70	max_min_right=56	max_min_right_minus=56	max_min_right_plus=42	max_pos_hash_score=156	max_right=99	max_right_minus=99	max_right_plus=76	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.90	new_junction_read_count=26	polymorphism_frequency=7.652e-01	pos_hash_score=22	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.55	side_2_overlap=0	side_2_possible_overlap_registers=132	side_2_read_count=27	side_2_redundant=0	total_non_overlap_reads=24	unique_read_sequence=CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG
JC	32	.	NC_000913	1207790	1	NC_000913	1209619	1	0	alignment_overlap=16	coverage_minus=16	coverage_plus=14	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=116	key=NC_000913__1207790__1__NC_000913__1209603__1__16____301__301__0__0	max_left=101	max_left_minus=101	max_left_plus=100	max_min_left=101	max_min_left_minus=101	max_min_left_plus=100	max_min_right=62	max_min_right_minus=62	max_min_right_plus=62	max_pos_hash_score=232	max_right=229	max_right_minus=229	max_right_plus=176	neg_log10_pos_hash_p_value=0.7	new_junction_coverage=0.70	new_junction_read_count=30	polymorphism_frequency=8.010e-01	pos_hash_score=28	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.18	side_1_overlap=16	side_1_possible_overlap_registers=132	side_1_read_count=9	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.16	side_2_overlap=0	side_2_possible_overlap_registers=116	side_2_read_count=7	side_2_redundant=0	total_non_overlap_reads=30
JC	33	.	NC_000913	1207805	-1	NC_000913	1209602	-1	0	alignment_overlap=16	coverage_minus=14	coverage_plus=12	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=116	key=NC_000913__1207805__-1__NC_000913__1209618__-1__16____301__301__0__0	max_left=249	max_left_minus=249	max_left_plus=93	max_min_left=91	max_min_left_minus=91	max_min_left_plus=76	max_min_right=59	max_min_right_minus=59	max_min_right_plus=59	max_pos_hash_score=232	max_right=192	max_right_minus=192	max_right_plus=148	neg_log10_pos_hash_p_value=0.9	new_junction_coverage=0.61	new_junction_read_count=26	polymorphism_frequency=7.477e-01	pos_hash_score=25	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.25	side_1_overlap=16	side_1_possible_overlap_registers=132	side_1_read_count=12	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.16	side_2_overlap=0	side_2_possible_overlap_registers=116	side_2_read_count=7	side_2_redundant=0	total_non_overlap_reads=26
JC	34	.	NC_000913	1299498	-1	NC_000913	1300698	1	0	alignment_overlap=4	coverage_minus=19	coverage_plus=19	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=128	key=NC_000913__1299498__-1__NC_000913__1300694__1__4____301__301__0__0	max_left=177	max_left_minus=177	max_left_plus=161	max_min_left=96	max_min_left_minus=96	max_min_left_plus=74	max_min_right=140	max_min_right_minus=140	max_min_right_plus=81	max_pos_hash_score=256	max_right=289	max_right_minus=205	max_right_plus=289	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.81	new_junction_read_count=38	polymorphism_frequency=1.000e+00	pos_hash_score=37	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=4	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=128	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=38
JC	35	.	NC_000913	1396482	-1	NC_000913	1428319	1	0	alignment_overlap=5	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=8.816e-02	junction_possible_overlap_registers=127	key=NC_000913__1396487__-1__NC_000913__1428319__1__5____301__301__1__0	max_left=168	max_left_minus=168	max_left_plus=112	max_min_left=0	max_min_left_minus=0	max_min_left_plus=0	max_min_right=37	max_min_right_minus=37	max_min_right_plus=37	max_pos_hash_score=254	max_right=37	max_right_minus=37	max_right_plus=37	neg_log10_pos_hash_p_value=5.4	new_junction_coverage=0.09	new_junction_read_count=4	polymorphism_frequency=8.816e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.88	side_2_overlap=5	side_2_possible_overlap_registers=132	side_2_read_count=43	side_2_redundant=0	total_non_overlap_reads=4
JC	36	.	NC_000913	1397238	-1	NC_000913	1978494	-1	0	alignment_overlap=0	coverage_minus=14	coverage_plus=19	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=132	key=NC_000913__1397238__-1__NC_000913__1978494__-1__0____301__301__1__0	max_left=218	max_left_minus=126	max_left_plus=218	max_min_left=79	max_min_left_minus=68	max_min_left_plus=79	max_min_right=118	max_min_right_minus=111	max_min_right_plus=118	max_pos_hash_score=264	max_right=164	max_right_minus=111	max_right_plus=164	neg_log10_pos_hash_p_value=0.6	new_junction_coverage=0.68	new_junction_read_count=33	polymorphism_frequency=1.000e+00	pos_hash_score=33	prediction=consensus	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=132	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=33
JC	37	.	NC_000913	1784297	1	NC_000913	1979270	-1	0	alignment_overlap=0	coverage_minus=16	coverage_plus=19	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=132	key=NC_000913__1784297__1__NC_000913__1979270__-1__0____301__301__0__1	max_left=287	max_left_minus=125	max_left_plus=287	max_min_left=76	max_min_left_minus=76	max_min_left_plus=76	max_min_right=101	max_min_right_minus=101	max_min_right_plus=76	max_pos_hash_score=264	max_right=186	max_right_minus=186	max_right_plus=186	neg_log10_pos_hash_p_value=0.6	new_junction_coverage=0.72	new_junction_read_count=35	polymorphism_frequency=1.000e+00	pos_hash_score=34	prediction=consensus	read_count_offset=9	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=123	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=35
JC	38	.	NC_000913	1784305	-1	NC_000913	1978503	1	0	alignment_overlap=0	coverage_minus=18	coverage_plus=22	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=132	key=NC_000913__1784305__-1__NC_000913__1978503__1__0____301__301__0__1	max_left=239	max_left_minus=239	max_left_plus=142	max_min_left=107	max_min_left_minus=77	max_min_left_plus=107	max_min_right=106	max_min_right_minus=75	max_min_right_plus=106	max_pos_hash_score=264	max_right=224	max_right_minus=203	max_right_plus=224	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.82	new_junction_read_count=40	polymorphism_frequency=1.000e+00	pos_hash_score=39	prediction=consensus	read_count_offset=9	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=123	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=40
JC	39	.	NC_000913	1979271	1	NC_000913	2102947	-1	0	alignment_overlap=0	coverage_minus=13	coverage_plus=13	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=132	key=NC_000913__1979271__1__NC_000913__2102947__-1__0____301__301__0__1	max_left=190	max_left_minus=190	max_left_plus=190	max_min_left=114	max_min_left_minus=81	max_min_left_plus=114	max_min_right=73	max_min_right_minus=54	max_min_right_plus=73	max_pos_hash_score=264	max_right=186	max_right_minus=159	max_right_plus=186	neg_log10_pos_hash_p_value=1.1	new_junction_coverage=0.53	new_junction_read_count=26	polymorphism_frequency=1.000e+00	pos_hash_score=26	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=26
JC	40	.	NC_000913	3986339	-1	NC_000913	3986355	1	0	alignment_overlap=10	coverage_minus=11	coverage_plus=10	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=122	key=NC_000913__3986339__-1__NC_000913__3986345__1__10____301__301__0__0	max_left=188	max_left_minus=188	max_left_plus=135	max_min_left=77	max_min_left_minus=77	max_min_left_plus=69	max_min_right=122	max_min_right_minus=122	max_min_right_plus=75	max_pos_hash_score=244	max_right=212	max_right_minus=212	max_right_plus=170	neg_log10_pos_hash_p_value=1.5	new_junction_coverage=0.47	new_junction_read_count=21	polymorphism_frequency=1.000e+00	pos_hash_score=20	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=10	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=122	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=21
JC	41	.	NC_000913	4542690	-1	NC_000913	4542986	-1	0	alignment_overlap=9	coverage_minus=17	coverage_plus=19	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=123	key=NC_000913__4542690__-1__NC_000913__4542995__-1__9____301__301__0__0	max_left=212	max_left_minus=212	max_left_plus=198	max_min_left=81	max_min_left_minus=65	max_min_left_plus=81	max_min_right=103	max_min_right_minus=103	max_min_right_plus=75	max_pos_hash_score=246	max_right=196	max_right_minus=195	max_right_plus=196	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.79	new_junction_read_count=36	polymorphism_frequency=9.351e-01	pos_hash_score=35	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=9	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.11	side_2_overlap=0	side_2_possible_overlap_registers=123	side_2_read_count=5	side_2_redundant=0	total_non_overlap_reads=36
JC	42	.	NC_000913	4542691	1	NC_000913	4542988	1	0	alignment_overlap=1	coverage_minus=22	coverage_plus=18	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=131	key=NC_000913__4542691__1__NC_000913__4542987__1__1____301__301__0__0	max_left=183	max_left_minus=183	max_left_plus=183	max_min_left=94	max_min_left_minus=94	max_min_left_plus=94	max_min_right=80	max_min_right_minus=80	max_min_right_plus=80	max_pos_hash_score=262	max_right=195	max_right_minus=170	max_right_plus=195	neg_log10_pos_hash_p_value=0.5	new_junction_coverage=0.85	new_junction_read_count=41	polymorphism_frequency=9.213e-01	pos_hash_score=35	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=1	side_1_possible_overlap_registers=132	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.14	side_2_overlap=0	side_2_possible_overlap_registers=131	side_2_read_count=7	side_2_redundant=0	total_non_overlap_reads=40
JC	43	.	NC_000913	4573553	1	NC_000913	4573588	1	0	alignment_overlap=3	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=7.037e-02	junction_possible_overlap_registers=129	key=NC_000913__4573553__1__NC_000913__4573585__1__3____301__301__0__0	max_left=39	max_left_minus=39	max_left_plus=39	max_min_left=39	max_min_left_minus=39	max_min_left_plus=39	max_min_right=20	max_min_right_minus=20	max_min_right_plus=20	max_pos_hash_score=258	max_right=70	max_right_minus=70	max_right_plus=70	neg_log10_pos_hash_p_value=5.5	new_junction_coverage=0.08	new_junction_read_count=4	polymorphism_frequency=7.037e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=1.19	side_1_overlap=3	side_1_possible_overlap_registers=132	side_1_read_count=58	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=1.03	side_2_overlap=0	side_2_possible_overlap_registers=129	side_2_read_count=49	side_2_redundant=0	total_non_overlap_reads=4
UN	44	.	NC_000913	15559	16567
UN	45	.	NC_000913	19937	20408
UN	46	.	NC_000913	223922	224639
UN	47	.	NC_000913	225062	225443
UN	48	.	NC_000913	226737	226769
UN	49	.	NC_000913	226782	226787
UN	50	.	NC_000913	227126	228536
UN	51	.	NC_000913	257908	258683
UN	52	.	NC_000913	270707	271143
UN	53	.	NC_000913	274103	274978
UN	54	.	NC_000913	279340	279341
UN	55	.	NC_000913	279343	279769
UN	56	.	NC_000913	290749	291213
UN	57	.	NC_000913	291215	291216
UN	58	.	NC_000913	291218	291218
UN	59	.	NC_000913	315403	315408
UN	60	.	NC_000913	315410	315412
UN	61	.	NC_000913	315414	315416
UN	62	.	NC_000913	315418	316329
UN	63	.	NC_000913	381417	381417
UN	64	.	NC_000913	381420	381421
UN	65	.	NC_000913	381423	381423
UN	66	.	NC_000913	381427	381427
UN	67	.	NC_000913	381429	381431
UN	68	.	NC_000913	381433	382485
UN	69	.	NC_000913	391832	392810
UN	70	.	NC_000913	526026	526589
UN	71	.	NC_000913	566942	567853
UN	72	.	NC_000913	567863	567863
UN	73	.	NC_000913	574742	575691
UN	74	.	NC_000913	608136	609219
UN	75	.	NC_000913	609222	609223
UN	76	.	NC_000913	609226	609227
UN	77	.	NC_000913	609232	609233
UN	78	.	NC_000913	609236	609236
UN	79	.	NC_000913	688030	688030
UN	80	.	NC_000913	688034	688034
UN	81	.	NC_000913	688036	688036
UN	82	.	NC_000913	688038	688919
UN	83	.	NC_000913	729948	729948
UN	84	.	NC_000913	729975	729988
UN	85	.	NC_000913	788946	789979
UN	86	.	NC_000913	1050164	1050165
UN	87	.	NC_000913	1050169	1050173
UN	88	.	NC_000913	1050175	1050250
UN	89	.	NC_000913	1094394	1094394
UN	90	.	NC_000913	1094396	1094397
UN	91	.	NC_000913	1094400	1094403
UN	92	.	NC_000913	1094405	1095328
UN	93	.	NC_000913	1299499	1300697
UN	94	.	NC_000913	1396212	1397072
UN	95	.	NC_000913	1432446	1432545
UN	96	.	NC_000913	1432790	1433042
UN	97	.	NC_000913	1433776	1433908
UN	98	.	NC_000913	1468054	1469083
UN	99	.	NC_000913	1469388	1470340
UN	100	.	NC_000913	1528471	1529034
UN	101	.	NC_000913	1571051	1571214
UN	102	.	NC_000913	1571538	1571644
UN	103	.	NC_000913	1571646	1571646
UN	104	.	NC_000913	1633074	1633074
UN	105	.	NC_000913	1633098	1633098
UN	106	.	NC_000913	1633118	1633119
UN	107	.	NC_000913	1633392	1633454
UN	108	.	NC_000913	1634229	1634502
UN	109	.	NC_000913	1634785	1634809
UN	110	.	NC_000913	1634824	1634824
UN	111	.	NC_000913	1634830	1634831
UN	112	.	NC_000913	1634858	1634866
UN	113	.	NC_000913	1651039	1651402
UN	114	.	NC_000913	1978495	1979270
UN	115	.	NC_000913	2066866	2067127
UN	116	.	NC_000913	2069076	2070143
UN	117	.	NC_000913	2101900	2102772
UN	118	.	NC_000913	2170348	2171269
UN	119	.	NC_000913	2289049	2289049
UN	120	.	NC_000913	2289056	2289919
UN	121	.	NC_000913	2289922	2289922
UN	122	.	NC_000913	2514443	2515429
UN	123	.	NC_000913	2515434	2515434
UN	124	.	NC_000913	2515437	2515437
UN	125	.	NC_000913	2726237	2729102
UN	126	.	NC_000913	2729732	2730819
UN	127	.	NC_000913	2996519	2996520
UN	128	.	NC_000913	2996523	2996523
UN	129	.	NC_000913	2996525	2996525
UN	130	.	NC_000913	2996528	2997553
UN	131	.	NC_000913	3130266	3131145
UN	132	.	NC_000913	3131148	3131152
UN	133	.	NC_000913	3186248	3187280
UN	134	.	NC_000913	3365705	3365705
UN	135	.	NC_000913	3365711	3366620
UN	136	.	NC_000913	3423777	3424461
UN	137	.	NC_000913	3424808	3426664
UN	138	.	NC_000913	3426668	3426668
UN	139	.	NC_000913	3426990	3426990
UN	140	.	NC_000913	3426993	3428417
UN	141	.	NC_000913	3428419	3428423
UN	142	.	NC_000913	3428425	3428427
UN	143	.	NC_000913	3470340	3470583
UN	144	.	NC_000913	3583611	3584003
UN	145	.	NC_000913	3619434	3620946
UN	146	.	NC_000913	3620948	3620948
UN	147	.	NC_000913	3620961	3620961
UN	148	.	NC_000913	3620971	3620971
UN	149	.	NC_000913	3620973	3620973
UN	150	.	NC_000913	3620977	3620977
UN	151	.	NC_000913	3621269	3622151
UN	152	.	NC_000913	3652210	3653107
UN	153	.	NC_000913	3666572	3666717
UN	154	.	NC_000913	3667083	3667185
UN	155	.	NC_000913	3667209	3667209
UN	156	.	NC_000913	3762437	3763910
UN	157	.	NC_000913	3763914	3763914
UN	158	.	NC_000913	3763916	3763916
UN	159	.	NC_000913	3764229	3764230
UN	160	.	NC_000913	3764232	3765145
UN	161	.	NC_000913	3941839	3941853
UN	162	.	NC_000913	3941865	3941865
UN	163	.	NC_000913	3941868	3941868
UN	164	.	NC_000913	3941874	3941875
UN	165	.	NC_000913	3942189	3943232
UN	166	.	NC_000913	3943508	3943529
UN	167	.	NC_000913	3943532	3943850
UN	168	.	NC_000913	3944235	3945410
UN	169	.	NC_000913	3946411	3946413
UN	170	.	NC_000913	3946418	3946418
UN	171	.	NC_000913	3946437	3946447
UN	172	.	NC_000913	3986340	3986354
UN	173	.	NC_000913	4035301	4035587
UN	174	.	NC_000913	4035905	4036977
UN	175	.	NC_000913	4037227	4037308
UN	176	.	NC_000913	4037586	4037586
UN	177	.	NC_000913	4037590	4037665
UN	178	.	NC_000913	4037675	4037675
UN	179	.	NC_000913	4038002	4038528
UN	180	.	NC_000913	4038858	4039245
UN	181	.	NC_000913	4039569	4040482
UN	182	.	NC_000913	4166454	4168047
UN	183	.	NC_000913	4168737	4168737
UN	184	.	NC_000913	4168743	4171489
UN	185	.	NC_000913	4176678	4176962
UN	186	.	NC_000913	4208246	4209569
UN	187	.	NC_000913	4209835	4209835
UN	188	.	NC_000913	4209838	4209839
UN	189	.	NC_000913	4209843	4209844
UN	190	.	NC_000913	4209849	4209849
UN	191	.	NC_000913	4209851	4209853
UN	192	.	NC_000913	4209855	4209935
UN	193	.	NC_000913	4210149	4212995
UN	194	.	NC_000913	4296213	4296214
UN	195	.	NC_000913	4296216	4296216
UN	196	.	NC_000913	4296218	4296285
UN	197	.	NC_000913	4498360	4499346
UN	198	.	NC_000913	4507607	4508544
UN	199	.	NC_000913	4542987	4542987
