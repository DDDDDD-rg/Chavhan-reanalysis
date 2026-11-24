#=GENOME_DIFF	1.0
#=TITLE	SRR21566761
#=CREATED	18:45:10 14 Nov 2026
#=PROGRAM	breseq 0.40.2 
#=COMMAND	breseq -r reference/NC_000913.3.gbk -o work/breseq/SRR21566761 -n SRR21566761 -j 2 --consensus-frequency-cutoff 0.70 work/trimmed/SRR21566761_1P.fastq.gz work/trimmed/SRR21566761_2P.fastq.gz
#=REFSEQ	reference/NC_000913.3.gbk
#=READSEQ	work/trimmed/SRR21566761_1P.fastq.gz
#=READSEQ	work/trimmed/SRR21566761_2P.fastq.gz
#=CONVERTED-BASES	258678271
#=CONVERTED-READS	1591293
#=INPUT-BASES	258679475
#=INPUT-READS	1591298
#=MAPPED-BASES	257258851
#=MAPPED-READS	1581425
SNP	1	15	NC_000913	96078	T
INS	2	34	NC_000913	99061	CCTGGCGGGAGCGAAATTGTG	repeat_length=21	repeat_new_copies=2	repeat_ref_copies=1	repeat_seq=CCTGGCGGGAGCGAAATTGTG
DEL	3	25,35	NC_000913	257908	776
SNP	4	16	NC_000913	296488	T
DEL	5	28,43	NC_000913	1978503	776
SNP	6	17	NC_000913	2071308	T
DEL	7	18,19	NC_000913	2173363	2
SNP	8	20	NC_000913	2231119	C
INS	9	21	NC_000913	3560455	G
DEL	10	30,48	NC_000913	4123832	36
INS	11	22,23	NC_000913	4296381	GC
MOB	12	44,45	NC_000913	4422231	IS1	-1	9
DEL	13	31,49	NC_000913	4456872	378
MOB	14	46,47	NC_000913	4542428	IS1	1	9
RA	15	.	NC_000913	96078	0	C	T	consensus_score=223.8	frequency=1	major_base=T	major_cov=29/32	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=29/32	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=29/32
RA	16	.	NC_000913	296488	0	C	T	consensus_score=184.2	frequency=1	major_base=T	major_cov=23/28	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=23/28	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=23/28
RA	17	.	NC_000913	2071308	0	G	T	consensus_score=130.1	frequency=1	major_base=T	major_cov=19/18	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=19/18	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=19/18
RA	18	.	NC_000913	2173363	0	C	.	consensus_score=223.7	frequency=1	major_base=.	major_cov=25/25	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=25/25	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=25/25
RA	19	.	NC_000913	2173364	0	C	.	consensus_score=223.7	frequency=1	major_base=.	major_cov=25/25	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=25/25	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=25/25
RA	20	.	NC_000913	2231119	0	T	C	consensus_score=150.0	frequency=1	major_base=C	major_cov=17/23	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=17/23	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=17/23
RA	21	.	NC_000913	3560455	1	.	G	consensus_score=187.9	frequency=1	major_base=G	major_cov=27/23	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=27/23	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=27/23
RA	22	.	NC_000913	4296380	1	.	C	consensus_score=159.5	frequency=1	major_base=C	major_cov=23/20	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=23/20	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=23/20
RA	23	.	NC_000913	4296380	2	.	G	consensus_score=158.7	frequency=1	major_base=G	major_cov=23/20	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=23/20	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=23/20
MC	24	.	NC_000913	66614	66770	26	0	left_inside_cov=0	left_outside_cov=33	right_inside_cov=14	right_outside_cov=16
MC	25	.	NC_000913	257908	258683	767	0	left_inside_cov=0	left_outside_cov=40	right_inside_cov=1	right_outside_cov=41
MC	26	.	NC_000913	788916	789979	0	0	left_inside_cov=14	left_outside_cov=15	right_inside_cov=0	right_outside_cov=44
MC	27	.	NC_000913	1777525	1784296	0	0	left_inside_cov=2	left_outside_cov=36	right_inside_cov=0	right_outside_cov=49
MC	28	.	NC_000913	1978503	1979278	767	0	left_inside_cov=0	left_outside_cov=34	right_inside_cov=0	right_outside_cov=34
MC	29	.	NC_000913	3423794	3424516	440	277	left_inside_cov=14	left_outside_cov=16	right_inside_cov=13	right_outside_cov=15
MC	30	.	NC_000913	4123832	4123867	0	0	left_inside_cov=1	left_outside_cov=53	right_inside_cov=2	right_outside_cov=54
MC	31	.	NC_000913	4456872	4457249	0	0	left_inside_cov=0	left_outside_cov=70	right_inside_cov=1	right_outside_cov=70
JC	32	.	NC_000913	1	1	NC_000913	4641652	-1	0	alignment_overlap=0	coverage_minus=24	coverage_plus=29	flanking_left=301	flanking_right=301	frequency=1	ignore=CIRCULAR_CHROMOSOME	junction_possible_overlap_registers=161	key=NC_000913__1__1__NC_000913__4641652__-1__0____301__301__0__0	max_left=283	max_left_minus=283	max_left_plus=256	max_min_left=105	max_min_left_minus=105	max_min_left_plus=102	max_min_right=116	max_min_right_minus=116	max_min_right_plus=98	max_pos_hash_score=324	max_right=286	max_right_minus=227	max_right_plus=286	neg_log10_pos_hash_p_value=0.2	new_junction_coverage=0.96	new_junction_read_count=53	polymorphism_frequency=1.000e+00	pos_hash_score=51	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=161	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=53
JC	33	.	NC_000913	66613	-1	NC_000913	66784	1	0	alignment_overlap=50	coverage_minus=19	coverage_plus=14	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=111	key=NC_000913__66613__-1__NC_000913__66734__1__50____301__301__0__0	max_left=232	max_left_minus=216	max_left_plus=232	max_min_left=110	max_min_left_minus=110	max_min_left_plus=57	max_min_right=117	max_min_right_minus=117	max_min_right_plus=101	max_pos_hash_score=224	max_right=209	max_right_minus=209	max_right_plus=127	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.87	new_junction_read_count=33	polymorphism_frequency=1.000e+00	pos_hash_score=31	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=50	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=111	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=33
JC	34	.	NC_000913	99041	1	NC_000913	99061	-1	0	alignment_overlap=0	coverage_minus=27	coverage_plus=32	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__99041__1__NC_000913__99061__-1__0____301__301__0__0	max_left=273	max_left_minus=273	max_left_plus=271	max_min_left=97	max_min_left_minus=97	max_min_left_plus=94	max_min_right=109	max_min_right_minus=92	max_min_right_plus=109	max_pos_hash_score=324	max_right=266	max_right_minus=266	max_right_plus=246	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.07	new_junction_read_count=59	polymorphism_frequency=8.369e-01	pos_hash_score=56	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.29	side_1_overlap=0	side_1_possible_overlap_registers=161	side_1_read_count=16	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.13	side_2_overlap=0	side_2_possible_overlap_registers=161	side_2_read_count=7	side_2_redundant=0	total_non_overlap_reads=59
JC	35	.	NC_000913	257907	-1	NC_000913	258684	1	0	alignment_overlap=8	coverage_minus=21	coverage_plus=18	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=153	key=NC_000913__257907__-1__NC_000913__258676__1__8____301__301__0__0	max_left=243	max_left_minus=243	max_left_plus=161	max_min_left=120	max_min_left_minus=120	max_min_left_plus=67	max_min_right=114	max_min_right_minus=114	max_min_right_plus=102	max_pos_hash_score=308	max_right=275	max_right_minus=179	max_right_plus=275	neg_log10_pos_hash_p_value=0.6	new_junction_coverage=0.77	new_junction_read_count=40	polymorphism_frequency=1.000e+00	pos_hash_score=38	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=8	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=153	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=39
JC	36	.	NC_000913	789980	1	NC_000913	4171849	-1	-54	alignment_overlap=-54	coverage_minus=12	coverage_plus=16	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=107	key=NC_000913__789980__1__NC_000913__4171849__-1__-54__CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG__301__301__0__0	max_left=189	max_left_minus=189	max_left_plus=188	max_min_left=76	max_min_left_minus=76	max_min_left_plus=69	max_min_right=79	max_min_right_minus=63	max_min_right_plus=79	max_pos_hash_score=216	max_right=99	max_right_minus=99	max_right_plus=95	neg_log10_pos_hash_p_value=0.6	new_junction_coverage=0.79	new_junction_read_count=29	polymorphism_frequency=7.317e-01	pos_hash_score=25	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.58	side_2_overlap=0	side_2_possible_overlap_registers=161	side_2_read_count=32	side_2_redundant=0	total_non_overlap_reads=28	unique_read_sequence=CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG
JC	37	.	NC_000913	1207790	1	NC_000913	1209619	1	0	alignment_overlap=16	coverage_minus=3	coverage_plus=1	flanking_left=301	flanking_right=301	frequency=9.742e-02	junction_possible_overlap_registers=145	key=NC_000913__1207790__1__NC_000913__1209603__1__16____301__301__0__0	max_left=191	max_left_minus=191	max_left_plus=70	max_min_left=123	max_min_left_minus=123	max_min_left_plus=70	max_min_right=77	max_min_right_minus=77	max_min_right_plus=0	max_pos_hash_score=292	max_right=258	max_right_minus=258	max_right_plus=131	neg_log10_pos_hash_p_value=5.7	new_junction_coverage=0.08	new_junction_read_count=4	polymorphism_frequency=9.742e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.53	side_1_overlap=16	side_1_possible_overlap_registers=161	side_1_read_count=29	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.97	side_2_overlap=0	side_2_possible_overlap_registers=145	side_2_read_count=48	side_2_redundant=0	total_non_overlap_reads=4
JC	38	.	NC_000913	1207805	-1	NC_000913	1209602	-1	0	alignment_overlap=16	coverage_minus=3	coverage_plus=6	flanking_left=301	flanking_right=301	frequency=1.833e-01	junction_possible_overlap_registers=145	key=NC_000913__1207805__-1__NC_000913__1209618__-1__16____301__301__0__0	max_left=151	max_left_minus=151	max_left_plus=129	max_min_left=82	max_min_left_minus=82	max_min_left_plus=78	max_min_right=62	max_min_right_minus=36	max_min_right_plus=62	max_pos_hash_score=292	max_right=156	max_right_minus=126	max_right_plus=156	neg_log10_pos_hash_p_value=4.0	new_junction_coverage=0.18	new_junction_read_count=9	polymorphism_frequency=1.833e-01	pos_hash_score=9	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.69	side_1_overlap=16	side_1_possible_overlap_registers=161	side_1_read_count=38	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.93	side_2_overlap=0	side_2_possible_overlap_registers=145	side_2_read_count=46	side_2_redundant=0	total_non_overlap_reads=9
JC	39	.	NC_000913	1299498	-1	NC_000913	1300698	1	0	alignment_overlap=4	coverage_minus=14	coverage_plus=12	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=157	key=NC_000913__1299498__-1__NC_000913__1300694__1__4____301__301__0__0	max_left=267	max_left_minus=267	max_left_plus=216	max_min_left=119	max_min_left_minus=119	max_min_left_plus=108	max_min_right=115	max_min_right_minus=77	max_min_right_plus=115	max_pos_hash_score=316	max_right=256	max_right_minus=186	max_right_plus=256	neg_log10_pos_hash_p_value=1.4	new_junction_coverage=0.48	new_junction_read_count=26	polymorphism_frequency=1.000e+00	pos_hash_score=26	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=4	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=157	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=26
JC	40	.	NC_000913	1777524	-1	NC_000913	1978503	1	0	alignment_overlap=1	coverage_minus=15	coverage_plus=19	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=160	key=NC_000913__1777525__-1__NC_000913__1978503__1__1____301__301__0__1	max_left=258	max_left_minus=178	max_left_plus=258	max_min_left=124	max_min_left_minus=87	max_min_left_plus=124	max_min_right=125	max_min_right_minus=94	max_min_right_plus=125	max_pos_hash_score=322	max_right=175	max_right_minus=175	max_right_plus=175	neg_log10_pos_hash_p_value=0.9	new_junction_coverage=0.62	new_junction_read_count=34	polymorphism_frequency=9.444e-01	pos_hash_score=33	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.04	side_1_overlap=0	side_1_possible_overlap_registers=160	side_1_read_count=2	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=1	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=34
JC	41	.	NC_000913	1784297	1	NC_000913	1979270	-1	0	alignment_overlap=0	coverage_minus=25	coverage_plus=24	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__1784297__1__NC_000913__1979270__-1__0____301__301__0__1	max_left=285	max_left_minus=285	max_left_plus=261	max_min_left=111	max_min_left_minus=102	max_min_left_plus=111	max_min_right=123	max_min_right_minus=123	max_min_right_plus=102	max_pos_hash_score=324	max_right=274	max_right_minus=274	max_right_plus=215	neg_log10_pos_hash_p_value=0.3	new_junction_coverage=0.89	new_junction_read_count=49	polymorphism_frequency=1.000e+00	pos_hash_score=49	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=49
JC	42	.	NC_000913	1827527	1	NC_000913	1827547	1	0	alignment_overlap=2	coverage_minus=2	coverage_plus=1	flanking_left=301	flanking_right=301	frequency=6.353e-02	junction_possible_overlap_registers=159	key=NC_000913__1827527__1__NC_000913__1827545__1__2____301__301__0__0	max_left=26	max_left_minus=26	max_left_plus=23	max_min_left=26	max_min_left_minus=26	max_min_left_plus=23	max_min_right=0	max_min_right_minus=0	max_min_right_plus=0	max_pos_hash_score=320	max_right=68	max_right_minus=68	max_right_plus=61	neg_log10_pos_hash_p_value=6.6	new_junction_coverage=0.06	new_junction_read_count=3	polymorphism_frequency=6.353e-02	pos_hash_score=3	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.82	side_1_overlap=2	side_1_possible_overlap_registers=161	side_1_read_count=45	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.81	side_2_overlap=0	side_2_possible_overlap_registers=159	side_2_read_count=44	side_2_redundant=0	total_non_overlap_reads=3
JC	43	.	NC_000913	1978502	-1	NC_000913	1979279	1	0	alignment_overlap=8	coverage_minus=16	coverage_plus=18	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=153	key=NC_000913__1978502__-1__NC_000913__1979271__1__8____301__301__0__0	max_left=228	max_left_minus=228	max_left_plus=222	max_min_left=121	max_min_left_minus=87	max_min_left_plus=121	max_min_right=95	max_min_right_minus=95	max_min_right_plus=80	max_pos_hash_score=308	max_right=262	max_right_minus=208	max_right_plus=262	neg_log10_pos_hash_p_value=0.8	new_junction_coverage=0.65	new_junction_read_count=34	polymorphism_frequency=1.000e+00	pos_hash_score=33	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=8	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=153	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=34
JC	44	.	NC_000913	1978503	1	NC_000913	4422239	-1	0	alignment_overlap=0	coverage_minus=35	coverage_plus=34	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__1978503__1__NC_000913__4422239__-1__0____301__301__1__0	max_left=233	max_left_minus=229	max_left_plus=233	max_min_left=114	max_min_left_minus=114	max_min_left_plus=114	max_min_right=130	max_min_right_minus=130	max_min_right_plus=113	max_pos_hash_score=324	max_right=204	max_right_minus=204	max_right_plus=204	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.31	new_junction_read_count=72	polymorphism_frequency=9.714e-01	pos_hash_score=61	prediction=consensus	read_count_offset=9	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.04	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=2	side_2_redundant=0	total_non_overlap_reads=69
JC	45	.	NC_000913	3583428	1	NC_000913	4422231	1	0	alignment_overlap=0	coverage_minus=31	coverage_plus=35	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__3583428__1__NC_000913__4422231__1__0____301__301__1__0	max_left=280	max_left_minus=255	max_left_plus=280	max_min_left=133	max_min_left_minus=133	max_min_left_plus=125	max_min_right=116	max_min_right_minus=116	max_min_right_plus=107	max_pos_hash_score=324	max_right=268	max_right_minus=184	max_right_plus=268	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.20	new_junction_read_count=66	polymorphism_frequency=9.689e-01	pos_hash_score=60	prediction=consensus	read_count_offset=9	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.04	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=2	side_2_redundant=0	total_non_overlap_reads=66
JC	46	.	NC_000913	3583428	1	NC_000913	4542436	-1	0	alignment_overlap=0	coverage_minus=27	coverage_plus=29	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__3583428__1__NC_000913__4542436__-1__0____301__301__1__0	max_left=255	max_left_minus=255	max_left_plus=244	max_min_left=117	max_min_left_minus=90	max_min_left_plus=117	max_min_right=133	max_min_right_minus=133	max_min_right_plus=118	max_pos_hash_score=324	max_right=240	max_right_minus=240	max_right_plus=170	neg_log10_pos_hash_p_value=0.3	new_junction_coverage=1.02	new_junction_read_count=56	polymorphism_frequency=1.000e+00	pos_hash_score=49	prediction=consensus	read_count_offset=9	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=56
JC	47	.	NC_000913	3584195	-1	NC_000913	4542428	1	0	alignment_overlap=0	coverage_minus=32	coverage_plus=38	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=161	key=NC_000913__3584195__-1__NC_000913__4542428__1__0____301__301__1__0	max_left=274	max_left_minus=237	max_left_plus=274	max_min_left=109	max_min_left_minus=99	max_min_left_plus=109	max_min_right=136	max_min_right_minus=92	max_min_right_plus=136	max_pos_hash_score=324	max_right=259	max_right_minus=259	max_right_plus=213	neg_log10_pos_hash_p_value=0.0	new_junction_coverage=1.27	new_junction_read_count=70	polymorphism_frequency=1.000e+00	pos_hash_score=66	prediction=consensus	read_count_offset=9	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=70
JC	48	.	NC_000913	4123831	-1	NC_000913	4123868	1	0	alignment_overlap=5	coverage_minus=27	coverage_plus=25	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=156	key=NC_000913__4123831__-1__NC_000913__4123863__1__5____301__301__0__0	max_left=249	max_left_minus=163	max_left_plus=249	max_min_left=89	max_min_left_minus=89	max_min_left_plus=48	max_min_right=111	max_min_right_minus=111	max_min_right_plus=107	max_pos_hash_score=314	max_right=261	max_right_minus=261	max_right_plus=214	neg_log10_pos_hash_p_value=0.3	new_junction_coverage=0.98	new_junction_read_count=52	polymorphism_frequency=9.908e-01	pos_hash_score=45	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.02	side_1_overlap=5	side_1_possible_overlap_registers=161	side_1_read_count=1	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=156	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=52
JC	49	.	NC_000913	4456871	-1	NC_000913	4457250	1	0	alignment_overlap=2	coverage_minus=33	coverage_plus=35	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=159	key=NC_000913__4456871__-1__NC_000913__4457248__1__2____301__301__0__0	max_left=260	max_left_minus=260	max_left_plus=235	max_min_left=139	max_min_left_minus=133	max_min_left_plus=139	max_min_right=124	max_min_right_minus=119	max_min_right_plus=124	max_pos_hash_score=320	max_right=279	max_right_minus=279	max_right_plus=238	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.27	new_junction_read_count=69	polymorphism_frequency=1.000e+00	pos_hash_score=63	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=2	side_1_possible_overlap_registers=161	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=159	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=68
JC	50	.	NC_000913	4542682	1	NC_000913	4542996	1	0	alignment_overlap=9	coverage_minus=12	coverage_plus=10	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=152	key=NC_000913__4542682__1__NC_000913__4542987__1__9____301__301__0__0	max_left=243	max_left_minus=243	max_left_plus=107	max_min_left=107	max_min_left_minus=71	max_min_left_plus=107	max_min_right=80	max_min_right_minus=80	max_min_right_plus=80	max_pos_hash_score=306	max_right=227	max_right_minus=213	max_right_plus=227	neg_log10_pos_hash_p_value=1.8	new_junction_coverage=0.42	new_junction_read_count=22	polymorphism_frequency=7.423e-01	pos_hash_score=22	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.24	side_1_overlap=9	side_1_possible_overlap_registers=161	side_1_read_count=13	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.06	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=3	side_2_redundant=0	total_non_overlap_reads=22
JC	51	.	NC_000913	4542690	-1	NC_000913	4542986	-1	0	alignment_overlap=9	coverage_minus=11	coverage_plus=14	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=152	key=NC_000913__4542690__-1__NC_000913__4542995__-1__9____301__301__0__0	max_left=241	max_left_minus=181	max_left_plus=241	max_min_left=104	max_min_left_minus=74	max_min_left_plus=104	max_min_right=104	max_min_right_minus=98	max_min_right_plus=104	max_pos_hash_score=306	max_right=183	max_right_minus=183	max_right_plus=169	neg_log10_pos_hash_p_value=1.8	new_junction_coverage=0.48	new_junction_read_count=25	polymorphism_frequency=7.241e-01	pos_hash_score=22	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.31	side_1_overlap=9	side_1_possible_overlap_registers=161	side_1_read_count=17	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.06	side_2_overlap=0	side_2_possible_overlap_registers=152	side_2_read_count=3	side_2_redundant=0	total_non_overlap_reads=25
UN	52	.	NC_000913	15560	16516
UN	53	.	NC_000913	16527	16528
UN	54	.	NC_000913	16531	16531
UN	55	.	NC_000913	16533	16534
UN	56	.	NC_000913	16538	16538
UN	57	.	NC_000913	20005	20358
UN	58	.	NC_000913	66614	66745
UN	59	.	NC_000913	223906	223906
UN	60	.	NC_000913	223916	223917
UN	61	.	NC_000913	223919	223920
UN	62	.	NC_000913	223923	223923
UN	63	.	NC_000913	223927	223927
UN	64	.	NC_000913	223930	224532
UN	65	.	NC_000913	224534	224538
UN	66	.	NC_000913	225111	225391
UN	67	.	NC_000913	227166	228475
UN	68	.	NC_000913	257908	258683
UN	69	.	NC_000913	270707	271076
UN	70	.	NC_000913	271078	271078
UN	71	.	NC_000913	274110	274930
UN	72	.	NC_000913	274932	274935
UN	73	.	NC_000913	274938	274938
UN	74	.	NC_000913	274942	274942
UN	75	.	NC_000913	279397	279397
UN	76	.	NC_000913	279401	279749
UN	77	.	NC_000913	290818	291233
UN	78	.	NC_000913	315424	315424
UN	79	.	NC_000913	315431	315433
UN	80	.	NC_000913	315435	316274
UN	81	.	NC_000913	316276	316276
UN	82	.	NC_000913	316289	316289
UN	83	.	NC_000913	381417	382416
UN	84	.	NC_000913	391868	392776
UN	85	.	NC_000913	392779	392781
UN	86	.	NC_000913	526083	526086
UN	87	.	NC_000913	526088	526089
UN	88	.	NC_000913	526092	526094
UN	89	.	NC_000913	526096	526528
UN	90	.	NC_000913	526536	526536
UN	91	.	NC_000913	526540	526540
UN	92	.	NC_000913	566961	566963
UN	93	.	NC_000913	566965	566965
UN	94	.	NC_000913	566983	567840
UN	95	.	NC_000913	574791	574791
UN	96	.	NC_000913	574801	575583
UN	97	.	NC_000913	608232	609154
UN	98	.	NC_000913	688049	688874
UN	99	.	NC_000913	788946	789979
UN	100	.	NC_000913	1094401	1095323
UN	101	.	NC_000913	1299499	1300697
UN	102	.	NC_000913	1396241	1397051
UN	103	.	NC_000913	1432828	1433033
UN	104	.	NC_000913	1433885	1433885
UN	105	.	NC_000913	1468133	1468134
UN	106	.	NC_000913	1468137	1469044
UN	107	.	NC_000913	1469484	1469486
UN	108	.	NC_000913	1469489	1469489
UN	109	.	NC_000913	1469492	1469492
UN	110	.	NC_000913	1469495	1469501
UN	111	.	NC_000913	1469503	1469509
UN	112	.	NC_000913	1469511	1469511
UN	113	.	NC_000913	1469513	1470296
UN	114	.	NC_000913	1470299	1470299
UN	115	.	NC_000913	1470301	1470301
UN	116	.	NC_000913	1470323	1470323
UN	117	.	NC_000913	1470327	1470327
UN	118	.	NC_000913	1528498	1528975
UN	119	.	NC_000913	1571023	1571135
UN	120	.	NC_000913	1571138	1571138
UN	121	.	NC_000913	1571143	1571147
UN	122	.	NC_000913	1571150	1571151
UN	123	.	NC_000913	1571600	1571601
UN	124	.	NC_000913	1634230	1634230
UN	125	.	NC_000913	1634250	1634458
UN	126	.	NC_000913	1651047	1651376
UN	127	.	NC_000913	1651379	1651380
UN	128	.	NC_000913	1651384	1651384
UN	129	.	NC_000913	1651386	1651386
UN	130	.	NC_000913	1777525	1777891
UN	131	.	NC_000913	1778023	1778023
UN	132	.	NC_000913	1778029	1778034
UN	133	.	NC_000913	1778070	1779720
UN	134	.	NC_000913	1779758	1779758
UN	135	.	NC_000913	1779800	1783289
UN	136	.	NC_000913	1783324	1783489
UN	137	.	NC_000913	1783512	1784296
UN	138	.	NC_000913	1978503	1979278
UN	139	.	NC_000913	2066914	2067117
UN	140	.	NC_000913	2067119	2067127
UN	141	.	NC_000913	2067129	2067129
UN	142	.	NC_000913	2067133	2067133
UN	143	.	NC_000913	2067136	2067136
UN	144	.	NC_000913	2069140	2069140
UN	145	.	NC_000913	2069148	2070099
UN	146	.	NC_000913	2101930	2102749
UN	147	.	NC_000913	2170347	2171232
UN	148	.	NC_000913	2289116	2289927
UN	149	.	NC_000913	2514504	2515395
UN	150	.	NC_000913	2726239	2726239
UN	151	.	NC_000913	2726269	2726270
UN	152	.	NC_000913	2726273	2726273
UN	153	.	NC_000913	2726275	2726275
UN	154	.	NC_000913	2726277	2729053
UN	155	.	NC_000913	2729808	2730718
UN	156	.	NC_000913	2996532	2996532
UN	157	.	NC_000913	2996534	2997510
UN	158	.	NC_000913	3130323	3130323
UN	159	.	NC_000913	3130326	3130326
UN	160	.	NC_000913	3130332	3130335
UN	161	.	NC_000913	3130343	3130343
UN	162	.	NC_000913	3130347	3131125
UN	163	.	NC_000913	3131151	3131151
UN	164	.	NC_000913	3186281	3186281
UN	165	.	NC_000913	3186284	3187268
UN	166	.	NC_000913	3365740	3365741
UN	167	.	NC_000913	3365748	3366556
UN	168	.	NC_000913	3423839	3424473
UN	169	.	NC_000913	3424851	3424852
UN	170	.	NC_000913	3424854	3424857
UN	171	.	NC_000913	3424859	3426622
UN	172	.	NC_000913	3427011	3428347
UN	173	.	NC_000913	3470350	3470350
UN	174	.	NC_000913	3470355	3470515
UN	175	.	NC_000913	3470517	3470521
UN	176	.	NC_000913	3583649	3584011
UN	177	.	NC_000913	3619477	3620887
UN	178	.	NC_000913	3621302	3622109
UN	179	.	NC_000913	3652228	3653053
UN	180	.	NC_000913	3666613	3666614
UN	181	.	NC_000913	3666616	3666618
UN	182	.	NC_000913	3666621	3666695
UN	183	.	NC_000913	3762451	3762451
UN	184	.	NC_000913	3762454	3763878
UN	185	.	NC_000913	3764294	3764294
UN	186	.	NC_000913	3764296	3765075
UN	187	.	NC_000913	3942244	3943195
UN	188	.	NC_000913	3944265	3945349
UN	189	.	NC_000913	4035361	4035362
UN	190	.	NC_000913	4035364	4035364
UN	191	.	NC_000913	4035366	4035518
UN	192	.	NC_000913	4035925	4036895
UN	193	.	NC_000913	4036900	4036900
UN	194	.	NC_000913	4037635	4037655
UN	195	.	NC_000913	4037663	4037663
UN	196	.	NC_000913	4037665	4037665
UN	197	.	NC_000913	4037668	4037668
UN	198	.	NC_000913	4037678	4037678
UN	199	.	NC_000913	4037683	4037683
UN	200	.	NC_000913	4038037	4038037
UN	201	.	NC_000913	4038041	4038041
UN	202	.	NC_000913	4038050	4038466
UN	203	.	NC_000913	4038470	4038470
UN	204	.	NC_000913	4038937	4039179
UN	205	.	NC_000913	4039611	4039611
UN	206	.	NC_000913	4039620	4040421
UN	207	.	NC_000913	4123832	4123867
UN	208	.	NC_000913	4166510	4166648
UN	209	.	NC_000913	4166655	4166655
UN	210	.	NC_000913	4166660	4166661
UN	211	.	NC_000913	4166675	4166675
UN	212	.	NC_000913	4166703	4166703
UN	213	.	NC_000913	4166863	4168033
UN	214	.	NC_000913	4168764	4168764
UN	215	.	NC_000913	4168768	4171471
UN	216	.	NC_000913	4176713	4176951
UN	217	.	NC_000913	4208341	4209498
UN	218	.	NC_000913	4209500	4209500
UN	219	.	NC_000913	4209503	4209504
UN	220	.	NC_000913	4209506	4209506
UN	221	.	NC_000913	4209508	4209510
UN	222	.	NC_000913	4209514	4209514
UN	223	.	NC_000913	4209518	4209518
UN	224	.	NC_000913	4209520	4209523
UN	225	.	NC_000913	4209526	4209527
UN	226	.	NC_000913	4210205	4212925
UN	227	.	NC_000913	4212929	4212929
UN	228	.	NC_000913	4456872	4457249
UN	229	.	NC_000913	4498368	4499274
UN	230	.	NC_000913	4507631	4508493
