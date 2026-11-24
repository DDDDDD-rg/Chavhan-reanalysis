#=GENOME_DIFF	1.0
#=TITLE	SRR21566764
#=CREATED	19:01:34 14 Nov 2026
#=PROGRAM	breseq 0.40.2 
#=COMMAND	breseq -r reference/NC_000913.3.gbk -o work/breseq/SRR21566764 -n SRR21566764 -j 2 --consensus-frequency-cutoff 0.70 work/trimmed/SRR21566764_1P.fastq.gz work/trimmed/SRR21566764_2P.fastq.gz
#=REFSEQ	reference/NC_000913.3.gbk
#=READSEQ	work/trimmed/SRR21566764_1P.fastq.gz
#=READSEQ	work/trimmed/SRR21566764_2P.fastq.gz
#=CONVERTED-BASES	268059020
#=CONVERTED-READS	1866079
#=INPUT-BASES	268059822
#=INPUT-READS	1866084
#=MAPPED-BASES	265965681
#=MAPPED-READS	1850739
SNP	1	13	NC_000913	96057	C
DEL	2	27,32	NC_000913	257908	776
SNP	3	14	NC_000913	296488	T
INS	4	15	NC_000913	581577	T
MOB	5	45,46	NC_000913	1784297	IS1	-1	9
DEL	6	29,48	NC_000913	1978503	776
DEL	7	17,18	NC_000913	2173363	2
SNP	8	19	NC_000913	2231119	C
SNP	9	20	NC_000913	3400531	A
INS	10	21	NC_000913	3560455	G
INS	11	24,25	NC_000913	4296381	GC
MOB	12	51,52	NC_000913	4542556	IS1	1	8
RA	13	.	NC_000913	96057	0	T	C	consensus_score=200.2	frequency=1	major_base=C	major_cov=25/28	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=25/28	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=25/28
RA	14	.	NC_000913	296488	0	C	T	consensus_score=196.1	frequency=1	major_base=T	major_cov=26/28	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=26/28	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=26/28
RA	15	.	NC_000913	581577	1	.	T	bias_e_value=4025880	bias_p_value=0.867338	consensus_score=143.8	fisher_strand_p_value=0.763239	frequency=1	ks_quality_p_value=0.696172	major_base=T	major_cov=20/19	major_frequency=7.358e-01	minor_base=.	minor_cov=8/6	new_cov=20/19	polymorphism_frequency=7.358e-01	polymorphism_score=48.7	prediction=consensus	ref_cov=8/6	total_cov=28/25
RA	16	.	NC_000913	1212088	1	.	C	bias_e_value=3514440	bias_p_value=0.757153	consensus_reject=FREQUENCY_CUTOFF	consensus_score=36.5	fisher_strand_p_value=1	frequency=4.400e-01	ks_quality_p_value=0.389921	major_base=.	major_cov=7/7	major_frequency=5.600e-01	minor_base=C	minor_cov=5/6	new_cov=5/6	polymorphism_frequency=4.400e-01	polymorphism_score=58.4	prediction=polymorphism	ref_cov=7/7	total_cov=12/13
RA	17	.	NC_000913	2173363	0	C	.	consensus_score=256.5	frequency=1	major_base=.	major_cov=28/28	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=28/28	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=28/28
RA	18	.	NC_000913	2173364	0	C	.	consensus_score=256.5	frequency=1	major_base=.	major_cov=28/28	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=28/28	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=28/28
RA	19	.	NC_000913	2231119	0	T	C	consensus_score=192.4	frequency=1	major_base=C	major_cov=25/25	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=25/25	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=25/25
RA	20	.	NC_000913	3400531	0	G	A	consensus_score=309.9	frequency=1	major_base=A	major_cov=42/42	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=42/42	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=42/42
RA	21	.	NC_000913	3560455	1	.	G	consensus_score=198.2	frequency=1	major_base=G	major_cov=28/24	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=28/24	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=28/24
RA	22	.	NC_000913	4123509	1	.	C	bias_e_value=4160220	bias_p_value=0.896279	consensus_reject=FREQUENCY_CUTOFF	consensus_score=12.6	fisher_strand_p_value=1	frequency=3.929e-01	ks_quality_p_value=0.580621	major_base=.	major_cov=18/16	major_frequency=6.071e-01	minor_base=C	minor_cov=11/11	new_cov=11/11	polymorphism_frequency=3.929e-01	polymorphism_score=121.1	prediction=polymorphism	ref_cov=18/16	total_cov=29/27
RA	23	.	NC_000913	4296060	0	C	T	bias_e_value=4467460	bias_p_value=0.962472	consensus_reject=FREQUENCY_CUTOFF	consensus_score=129.6	fisher_strand_p_value=0.738856	frequency=2.000e-01	ks_quality_p_value=1	major_base=C	major_cov=24/20	major_frequency=8.000e-01	minor_base=T	minor_cov=5/6	new_cov=5/6	polymorphism_frequency=2.000e-01	polymorphism_score=23.8	prediction=polymorphism	ref_cov=24/20	total_cov=29/26
RA	24	.	NC_000913	4296380	1	.	C	consensus_score=141.7	frequency=1	major_base=C	major_cov=20/18	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=20/18	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=20/18
RA	25	.	NC_000913	4296380	2	.	G	consensus_score=142.4	frequency=1	major_base=G	major_cov=20/18	major_frequency=1.000e+00	minor_base=N	minor_cov=0/0	new_cov=20/18	polymorphism_frequency=1.000e+00	polymorphism_score=NA	prediction=consensus	ref_cov=0/0	total_cov=20/18
RA	26	.	NC_000913	4543518	0	C	A	bias_e_value=2608990	bias_p_value=0.562081	consensus_reject=FREQUENCY_CUTOFF	consensus_score=56.7	fisher_strand_p_value=1	frequency=4.038e-01	ks_quality_p_value=0.22598	major_base=C	major_cov=16/15	major_frequency=5.962e-01	minor_base=A	minor_cov=10/11	new_cov=10/11	polymorphism_frequency=4.038e-01	polymorphism_score=66.2	prediction=polymorphism	ref_cov=16/15	total_cov=26/26
MC	27	.	NC_000913	257908	258683	767	0	left_inside_cov=0	left_outside_cov=56	right_inside_cov=3	right_outside_cov=58
MC	28	.	NC_000913	788934	789979	0	0	left_inside_cov=17	left_outside_cov=21	right_inside_cov=0	right_outside_cov=34
MC	29	.	NC_000913	1978503	1979278	767	0	left_inside_cov=0	left_outside_cov=64	right_inside_cov=2	right_outside_cov=64
JC	30	.	NC_000913	1	1	NC_000913	4641652	-1	0	alignment_overlap=0	coverage_minus=31	coverage_plus=32	flanking_left=301	flanking_right=301	frequency=1	ignore=CIRCULAR_CHROMOSOME	junction_possible_overlap_registers=142	key=NC_000913__1__1__NC_000913__4641652__-1__0____301__301__0__0	max_left=281	max_left_minus=255	max_left_plus=281	max_min_left=136	max_min_left_minus=96	max_min_left_plus=136	max_min_right=130	max_min_right_minus=89	max_min_right_plus=130	max_pos_hash_score=286	max_right=269	max_right_minus=256	max_right_plus=269	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.13	new_junction_read_count=64	polymorphism_frequency=1.000e+00	pos_hash_score=60	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=142	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=142	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=63
JC	31	.	NC_000913	203613	1	NC_000913	203655	1	0	alignment_overlap=5	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=5.128e-02	junction_possible_overlap_registers=137	key=NC_000913__203613__1__NC_000913__203650__1__5____301__301__0__0	max_left=37	max_left_minus=37	max_left_plus=37	max_min_left=36	max_min_left_minus=36	max_min_left_plus=36	max_min_right=33	max_min_right_minus=33	max_min_right_plus=33	max_pos_hash_score=276	max_right=51	max_right_minus=51	max_right_plus=51	neg_log10_pos_hash_p_value=7.2	new_junction_coverage=0.07	new_junction_read_count=4	polymorphism_frequency=5.128e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=1.50	side_1_overlap=5	side_1_possible_overlap_registers=142	side_1_read_count=85	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=1.20	side_2_overlap=0	side_2_possible_overlap_registers=137	side_2_read_count=66	side_2_redundant=0	total_non_overlap_reads=4
JC	32	.	NC_000913	257907	-1	NC_000913	258684	1	0	alignment_overlap=8	coverage_minus=28	coverage_plus=27	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=134	key=NC_000913__257907__-1__NC_000913__258676__1__8____301__301__0__0	max_left=250	max_left_minus=195	max_left_plus=250	max_min_left=105	max_min_left_minus=105	max_min_left_plus=55	max_min_right=103	max_min_right_minus=103	max_min_right_plus=103	max_pos_hash_score=270	max_right=241	max_right_minus=232	max_right_plus=241	neg_log10_pos_hash_p_value=0.2	new_junction_coverage=1.03	new_junction_read_count=55	polymorphism_frequency=1.000e+00	pos_hash_score=50	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=8	side_1_possible_overlap_registers=142	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=134	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=55
JC	33	.	NC_000913	291401	-1	NC_000913	1527841	1	0	alignment_overlap=0	coverage_minus=1	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=6.667e-02	junction_possible_overlap_registers=142	key=NC_000913__291401__-1__NC_000913__1527841__1__0____301__301__1__0	max_left=89	max_left_minus=45	max_left_plus=89	max_min_left=89	max_min_left_minus=45	max_min_left_plus=89	max_min_right=0	max_min_right_minus=0	max_min_right_plus=0	max_pos_hash_score=286	max_right=195	max_right_minus=85	max_right_plus=195	neg_log10_pos_hash_p_value=7.9	new_junction_coverage=0.05	new_junction_read_count=3	polymorphism_frequency=6.667e-02	pos_hash_score=3	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.74	side_2_overlap=0	side_2_possible_overlap_registers=142	side_2_read_count=42	side_2_redundant=0	total_non_overlap_reads=3
JC	34	.	NC_000913	508260	-1	NC_000913	508268	-1	0	alignment_overlap=8	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=7.468e-02	junction_possible_overlap_registers=134	key=NC_000913__508260__-1__NC_000913__508276__-1__8____301__301__0__0	max_left=68	max_left_minus=68	max_left_plus=68	max_min_left=0	max_min_left_minus=0	max_min_left_plus=0	max_min_right=21	max_min_right_minus=21	max_min_right_plus=21	max_pos_hash_score=270	max_right=21	max_right_minus=21	max_right_plus=21	neg_log10_pos_hash_p_value=7.1	new_junction_coverage=0.07	new_junction_read_count=4	polymorphism_frequency=7.468e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.90	side_1_overlap=8	side_1_possible_overlap_registers=142	side_1_read_count=51	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.95	side_2_overlap=0	side_2_possible_overlap_registers=134	side_2_read_count=51	side_2_redundant=0	total_non_overlap_reads=4
JC	35	.	NC_000913	609351	-1	NC_000913	1896966	1	0	alignment_overlap=4	coverage_minus=8	coverage_plus=12	flanking_left=301	flanking_right=301	frequency=4.000e-01	junction_possible_overlap_registers=138	key=NC_000913__609351__-1__NC_000913__1896962__1__4____301__301__1__0	max_left=251	max_left_minus=251	max_left_plus=207	max_min_left=86	max_min_left_minus=86	max_min_left_plus=86	max_min_right=103	max_min_right_minus=103	max_min_right_plus=61	max_pos_hash_score=278	max_right=259	max_right_minus=259	max_right_plus=246	neg_log10_pos_hash_p_value=2.7	new_junction_coverage=0.36	new_junction_read_count=20	polymorphism_frequency=4.000e-01	pos_hash_score=19	prediction=polymorphism	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=4	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.54	side_2_overlap=0	side_2_possible_overlap_registers=138	side_2_read_count=30	side_2_redundant=0	total_non_overlap_reads=20
JC	36	.	NC_000913	789980	1	NC_000913	4171849	-1	-54	alignment_overlap=-54	coverage_minus=9	coverage_plus=12	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=88	key=NC_000913__789980__1__NC_000913__4171849__-1__-54__CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG__301__301__0__0	max_left=210	max_left_minus=121	max_left_plus=210	max_min_left=50	max_min_left_minus=50	max_min_left_plus=50	max_min_right=85	max_min_right_minus=70	max_min_right_plus=85	max_pos_hash_score=178	max_right=85	max_right_minus=75	max_right_plus=85	neg_log10_pos_hash_p_value=1.0	new_junction_coverage=0.60	new_junction_read_count=21	polymorphism_frequency=7.003e-01	pos_hash_score=20	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=142	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.51	side_2_overlap=0	side_2_possible_overlap_registers=142	side_2_read_count=29	side_2_redundant=0	total_non_overlap_reads=21	unique_read_sequence=CGCCTTTGAGTGAGCTGATACCGCTCGCCGCAGCCGAACGCCCTAGGTCTAGGG
JC	37	.	NC_000913	1050545	-1	NC_000913	1527849	-1	0	alignment_overlap=1	coverage_minus=1	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=6.565e-02	junction_possible_overlap_registers=141	key=NC_000913__1050546__-1__NC_000913__1527849__-1__1____301__301__0__0	max_left=137	max_left_minus=33	max_left_plus=137	max_min_left=33	max_min_left_minus=33	max_min_left_plus=33	max_min_right=101	max_min_right_minus=0	max_min_right_plus=101	max_pos_hash_score=284	max_right=101	max_right_minus=85	max_right_plus=101	neg_log10_pos_hash_p_value=7.9	new_junction_coverage=0.05	new_junction_read_count=3	polymorphism_frequency=6.565e-02	pos_hash_score=3	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.76	side_2_overlap=1	side_2_possible_overlap_registers=142	side_2_read_count=43	side_2_redundant=0	total_non_overlap_reads=3
JC	38	.	NC_000913	1207790	1	NC_000913	1209619	1	0	alignment_overlap=16	coverage_minus=16	coverage_plus=15	flanking_left=301	flanking_right=301	frequency=6.891e-01	junction_possible_overlap_registers=126	key=NC_000913__1207790__1__NC_000913__1209603__1__16____301__301__0__0	max_left=247	max_left_minus=119	max_left_plus=247	max_min_left=119	max_min_left_minus=119	max_min_left_plus=71	max_min_right=87	max_min_right_minus=87	max_min_right_plus=87	max_pos_hash_score=254	max_right=229	max_right_minus=229	max_right_plus=207	neg_log10_pos_hash_p_value=1.2	new_junction_coverage=0.61	new_junction_read_count=31	polymorphism_frequency=6.891e-01	pos_hash_score=28	prediction=polymorphism	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.32	side_1_overlap=16	side_1_possible_overlap_registers=142	side_1_read_count=18	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.24	side_2_overlap=0	side_2_possible_overlap_registers=126	side_2_read_count=12	side_2_redundant=0	total_non_overlap_reads=31
JC	39	.	NC_000913	1207805	-1	NC_000913	1209602	-1	0	alignment_overlap=16	coverage_minus=13	coverage_plus=14	flanking_left=301	flanking_right=301	frequency=6.380e-01	junction_possible_overlap_registers=126	key=NC_000913__1207805__-1__NC_000913__1209618__-1__16____301__301__0__0	max_left=263	max_left_minus=207	max_left_plus=263	max_min_left=116	max_min_left_minus=116	max_min_left_plus=97	max_min_right=91	max_min_right_minus=87	max_min_right_plus=91	max_pos_hash_score=254	max_right=185	max_right_minus=184	max_right_plus=185	neg_log10_pos_hash_p_value=1.6	new_junction_coverage=0.54	new_junction_read_count=27	polymorphism_frequency=6.380e-01	pos_hash_score=24	prediction=polymorphism	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.37	side_1_overlap=16	side_1_possible_overlap_registers=142	side_1_read_count=21	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.24	side_2_overlap=0	side_2_possible_overlap_registers=126	side_2_read_count=12	side_2_redundant=0	total_non_overlap_reads=27
JC	40	.	NC_000913	1299498	-1	NC_000913	1300698	1	0	alignment_overlap=4	coverage_minus=25	coverage_plus=23	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=138	key=NC_000913__1299498__-1__NC_000913__1300694__1__4____301__301__0__0	max_left=242	max_left_minus=242	max_left_plus=186	max_min_left=115	max_min_left_minus=115	max_min_left_plus=87	max_min_right=122	max_min_right_minus=100	max_min_right_plus=122	max_pos_hash_score=278	max_right=214	max_right_minus=214	max_right_plus=200	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.87	new_junction_read_count=48	polymorphism_frequency=1.000e+00	pos_hash_score=43	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=4	side_1_possible_overlap_registers=142	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=138	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=48
JC	41	.	NC_000913	1411899	1	NC_000913	1434958	-1	0	alignment_overlap=26	coverage_minus=2	coverage_plus=3	flanking_left=301	flanking_right=301	frequency=1.150e-01	junction_possible_overlap_registers=116	key=NC_000913__1411899__1__NC_000913__1434984__-1__26____301__301__0__0	max_left=207	max_left_minus=207	max_left_plus=160	max_min_left=70	max_min_left_minus=70	max_min_left_plus=70	max_min_right=110	max_min_right_minus=9	max_min_right_plus=110	max_pos_hash_score=234	max_right=110	max_right_minus=96	max_right_plus=110	neg_log10_pos_hash_p_value=5.9	new_junction_coverage=0.11	new_junction_read_count=5	polymorphism_frequency=1.150e-01	pos_hash_score=5	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.97	side_1_overlap=26	side_1_possible_overlap_registers=142	side_1_read_count=55	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.69	side_2_overlap=0	side_2_possible_overlap_registers=116	side_2_read_count=32	side_2_redundant=0	total_non_overlap_reads=5
JC	42	.	NC_000913	1527841	1	NC_000913	1979270	-1	0	alignment_overlap=0	coverage_minus=3	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=1.064e-01	junction_possible_overlap_registers=142	key=NC_000913__1527841__1__NC_000913__1979270__-1__0____301__301__0__1	max_left=195	max_left_minus=195	max_left_plus=85	max_min_left=89	max_min_left_minus=89	max_min_left_plus=34	max_min_right=89	max_min_right_minus=89	max_min_right_plus=45	max_pos_hash_score=286	max_right=200	max_right_minus=199	max_right_plus=200	neg_log10_pos_hash_p_value=6.8	new_junction_coverage=0.09	new_junction_read_count=5	polymorphism_frequency=1.064e-01	pos_hash_score=5	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.74	side_1_overlap=0	side_1_possible_overlap_registers=142	side_1_read_count=42	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=5
JC	43	.	NC_000913	1527849	-1	NC_000913	1978503	1	0	alignment_overlap=0	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=8.511e-02	junction_possible_overlap_registers=142	key=NC_000913__1527849__-1__NC_000913__1978503__1__0____301__301__0__1	max_left=102	max_left_minus=102	max_left_plus=102	max_min_left=102	max_min_left_minus=102	max_min_left_plus=102	max_min_right=33	max_min_right_minus=33	max_min_right_plus=33	max_pos_hash_score=286	max_right=139	max_right_minus=137	max_right_plus=139	neg_log10_pos_hash_p_value=7.3	new_junction_coverage=0.07	new_junction_read_count=4	polymorphism_frequency=8.511e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.76	side_1_overlap=0	side_1_possible_overlap_registers=142	side_1_read_count=43	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=4
JC	44	.	NC_000913	1695519	1	NC_000913	1695540	1	0	alignment_overlap=4	coverage_minus=2	coverage_plus=2	flanking_left=301	flanking_right=301	frequency=6.277e-02	junction_possible_overlap_registers=138	key=NC_000913__1695519__1__NC_000913__1695536__1__4____301__301__0__0	max_left=25	max_left_minus=25	max_left_plus=25	max_min_left=25	max_min_left_minus=25	max_min_left_plus=25	max_min_right=0	max_min_right_minus=0	max_min_right_plus=0	max_pos_hash_score=278	max_right=72	max_right_minus=72	max_right_plus=72	neg_log10_pos_hash_p_value=7.2	new_junction_coverage=0.07	new_junction_read_count=4	polymorphism_frequency=6.277e-02	pos_hash_score=4	prediction=polymorphism	reject=COVERAGE_EVENNESS_SKEW,FREQUENCY_CUTOFF	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.97	side_1_overlap=4	side_1_possible_overlap_registers=142	side_1_read_count=55	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=1.20	side_2_overlap=0	side_2_possible_overlap_registers=138	side_2_read_count=66	side_2_redundant=0	total_non_overlap_reads=4
JC	45	.	NC_000913	1784297	1	NC_000913	1979270	-1	0	alignment_overlap=0	coverage_minus=32	coverage_plus=30	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=142	key=NC_000913__1784297__1__NC_000913__1979270__-1__0____301__301__0__1	max_left=272	max_left_minus=255	max_left_plus=272	max_min_left=122	max_min_left_minus=122	max_min_left_plus=113	max_min_right=107	max_min_right_minus=106	max_min_right_plus=107	max_pos_hash_score=286	max_right=288	max_right_minus=288	max_right_plus=200	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.09	new_junction_read_count=62	polymorphism_frequency=1.000e+00	pos_hash_score=55	prediction=consensus	read_count_offset=9	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=133	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=62
JC	46	.	NC_000913	1784305	-1	NC_000913	1978503	1	0	alignment_overlap=0	coverage_minus=24	coverage_plus=32	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=142	key=NC_000913__1784305__-1__NC_000913__1978503__1__0____301__301__0__1	max_left=271	max_left_minus=239	max_left_plus=271	max_min_left=131	max_min_left_minus=84	max_min_left_plus=131	max_min_right=133	max_min_right_minus=89	max_min_right_plus=133	max_pos_hash_score=286	max_right=262	max_right_minus=228	max_right_plus=262	neg_log10_pos_hash_p_value=0.2	new_junction_coverage=0.99	new_junction_read_count=56	polymorphism_frequency=1.000e+00	pos_hash_score=53	prediction=consensus	read_count_offset=9	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=0	side_1_possible_overlap_registers=133	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=56
JC	47	.	NC_000913	1896969	-1	NC_000913	2514273	1	0	alignment_overlap=4	coverage_minus=11	coverage_plus=10	flanking_left=301	flanking_right=301	frequency=4.468e-01	junction_possible_overlap_registers=138	key=NC_000913__1896973__-1__NC_000913__2514273__1__4____301__301__0__1	max_left=191	max_left_minus=191	max_left_plus=120	max_min_left=70	max_min_left_minus=70	max_min_left_plus=70	max_min_right=89	max_min_right_minus=89	max_min_right_plus=56	max_pos_hash_score=278	max_right=225	max_right_minus=152	max_right_plus=225	neg_log10_pos_hash_p_value=2.5	new_junction_coverage=0.38	new_junction_read_count=21	polymorphism_frequency=4.468e-01	pos_hash_score=20	prediction=polymorphism	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.47	side_1_overlap=0	side_1_possible_overlap_registers=138	side_1_read_count=26	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=4	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=21
JC	48	.	NC_000913	1978502	-1	NC_000913	1979279	1	0	alignment_overlap=8	coverage_minus=30	coverage_plus=32	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=134	key=NC_000913__1978502__-1__NC_000913__1979271__1__8____301__301__0__0	max_left=268	max_left_minus=268	max_left_plus=232	max_min_left=131	max_min_left_minus=100	max_min_left_plus=131	max_min_right=113	max_min_right_minus=113	max_min_right_plus=102	max_pos_hash_score=270	max_right=280	max_right_minus=280	max_right_plus=262	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.16	new_junction_read_count=62	polymorphism_frequency=1.000e+00	pos_hash_score=56	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.00	side_1_overlap=8	side_1_possible_overlap_registers=142	side_1_read_count=0	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=134	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=62
JC	49	.	NC_000913	1979270	-1	NC_000913	2174371	-1	0	alignment_overlap=1	coverage_minus=22	coverage_plus=17	flanking_left=301	flanking_right=301	frequency=6.842e-01	junction_possible_overlap_registers=141	key=NC_000913__1979270__-1__NC_000913__2174372__-1__1____301__301__1__0	max_left=189	max_left_minus=189	max_left_plus=189	max_min_left=121	max_min_left_minus=121	max_min_left_plus=81	max_min_right=101	max_min_right_minus=101	max_min_right_plus=101	max_pos_hash_score=284	max_right=266	max_right_minus=266	max_right_plus=192	neg_log10_pos_hash_p_value=0.8	new_junction_coverage=0.69	new_junction_read_count=39	polymorphism_frequency=6.842e-01	pos_hash_score=37	prediction=polymorphism	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=1	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.32	side_2_overlap=0	side_2_possible_overlap_registers=141	side_2_read_count=18	side_2_redundant=0	total_non_overlap_reads=39
JC	50	.	NC_000913	2174363	1	NC_000913	3584195	-1	0	alignment_overlap=0	coverage_minus=17	coverage_plus=16	flanking_left=301	flanking_right=301	frequency=6.471e-01	junction_possible_overlap_registers=142	key=NC_000913__2174363__1__NC_000913__3584195__-1__0____301__301__0__1	max_left=171	max_left_minus=171	max_left_plus=169	max_min_left=84	max_min_left_minus=79	max_min_left_plus=84	max_min_right=141	max_min_right_minus=114	max_min_right_plus=141	max_pos_hash_score=286	max_right=236	max_right_minus=236	max_right_plus=146	neg_log10_pos_hash_p_value=1.4	new_junction_coverage=0.58	new_junction_read_count=33	polymorphism_frequency=6.471e-01	pos_hash_score=30	prediction=polymorphism	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.32	side_1_overlap=0	side_1_possible_overlap_registers=142	side_1_read_count=18	side_1_redundant=0	side_2_annotate_key=repeat	side_2_continuation=0	side_2_coverage=NA	side_2_overlap=0	side_2_possible_overlap_registers=NA	side_2_read_count=NA	side_2_redundant=1	total_non_overlap_reads=33
JC	51	.	NC_000913	3583428	1	NC_000913	4542563	-1	0	alignment_overlap=0	coverage_minus=37	coverage_plus=28	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=142	key=NC_000913__3583428__1__NC_000913__4542563__-1__0____301__301__1__0	max_left=271	max_left_minus=271	max_left_plus=266	max_min_left=131	max_min_left_minus=131	max_min_left_plus=76	max_min_right=122	max_min_right_minus=109	max_min_right_plus=122	max_pos_hash_score=286	max_right=276	max_right_minus=267	max_right_plus=276	neg_log10_pos_hash_p_value=0.1	new_junction_coverage=1.14	new_junction_read_count=65	polymorphism_frequency=9.684e-01	pos_hash_score=62	prediction=consensus	read_count_offset=8	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=0	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.04	side_2_overlap=0	side_2_possible_overlap_registers=134	side_2_read_count=2	side_2_redundant=0	total_non_overlap_reads=65
JC	52	.	NC_000913	3584195	-1	NC_000913	4542556	1	0	alignment_overlap=2	coverage_minus=26	coverage_plus=26	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=140	key=NC_000913__3584195__-1__NC_000913__4542554__1__2____301__301__1__0	max_left=235	max_left_minus=195	max_left_plus=235	max_min_left=89	max_min_left_minus=84	max_min_left_plus=89	max_min_right=125	max_min_right_minus=125	max_min_right_plus=80	max_pos_hash_score=282	max_right=170	max_right_minus=134	max_right_plus=170	neg_log10_pos_hash_p_value=0.4	new_junction_coverage=0.95	new_junction_read_count=53	polymorphism_frequency=1.000e+00	pos_hash_score=46	prediction=consensus	read_count_offset=8	side_1_annotate_key=repeat	side_1_continuation=0	side_1_coverage=NA	side_1_overlap=2	side_1_read_count=NA	side_1_redundant=1	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.00	side_2_overlap=0	side_2_possible_overlap_registers=132	side_2_read_count=0	side_2_redundant=0	total_non_overlap_reads=52
JC	53	.	NC_000913	4123817	1	NC_000913	4123824	-1	0	alignment_overlap=7	coverage_minus=15	coverage_plus=14	flanking_left=301	flanking_right=301	frequency=4.742e-01	junction_possible_overlap_registers=135	key=NC_000913__4123817__1__NC_000913__4123831__-1__7____301__301__0__0	max_left=175	max_left_minus=175	max_left_plus=167	max_min_left=76	max_min_left_minus=76	max_min_left_plus=56	max_min_right=105	max_min_right_minus=70	max_min_right_plus=105	max_pos_hash_score=272	max_right=224	max_right_minus=224	max_right_plus=221	neg_log10_pos_hash_p_value=1.4	new_junction_coverage=0.54	new_junction_read_count=29	polymorphism_frequency=4.742e-01	pos_hash_score=28	prediction=polymorphism	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.60	side_1_overlap=7	side_1_possible_overlap_registers=142	side_1_read_count=34	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.59	side_2_overlap=0	side_2_possible_overlap_registers=135	side_2_read_count=32	side_2_redundant=0	total_non_overlap_reads=29
JC	54	.	NC_000913	4542682	1	NC_000913	4542996	1	0	alignment_overlap=9	coverage_minus=16	coverage_plus=20	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=133	key=NC_000913__4542682__1__NC_000913__4542987__1__9____301__301__0__0	max_left=265	max_left_minus=224	max_left_plus=265	max_min_left=114	max_min_left_minus=114	max_min_left_plus=73	max_min_right=136	max_min_right_minus=136	max_min_right_plus=118	max_pos_hash_score=268	max_right=219	max_right_minus=219	max_right_plus=189	neg_log10_pos_hash_p_value=0.8	new_junction_coverage=0.68	new_junction_read_count=36	polymorphism_frequency=9.246e-01	pos_hash_score=35	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.04	side_1_overlap=9	side_1_possible_overlap_registers=142	side_1_read_count=2	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.08	side_2_overlap=0	side_2_possible_overlap_registers=133	side_2_read_count=4	side_2_redundant=0	total_non_overlap_reads=36
JC	55	.	NC_000913	4542690	-1	NC_000913	4542986	-1	0	alignment_overlap=9	coverage_minus=17	coverage_plus=17	flanking_left=301	flanking_right=301	frequency=1	junction_possible_overlap_registers=133	key=NC_000913__4542690__-1__NC_000913__4542995__-1__9____301__301__0__0	max_left=123	max_left_minus=123	max_left_plus=118	max_min_left=123	max_min_left_minus=123	max_min_left_plus=86	max_min_right=116	max_min_right_minus=92	max_min_right_plus=116	max_pos_hash_score=268	max_right=235	max_right_minus=235	max_right_plus=184	neg_log10_pos_hash_p_value=1.0	new_junction_coverage=0.64	new_junction_read_count=34	polymorphism_frequency=9.323e-01	pos_hash_score=32	prediction=consensus	side_1_annotate_key=gene	side_1_continuation=0	side_1_coverage=0.02	side_1_overlap=9	side_1_possible_overlap_registers=142	side_1_read_count=1	side_1_redundant=0	side_2_annotate_key=gene	side_2_continuation=0	side_2_coverage=0.08	side_2_overlap=0	side_2_possible_overlap_registers=133	side_2_read_count=4	side_2_redundant=0	total_non_overlap_reads=34
UN	56	.	NC_000913	15561	16501
UN	57	.	NC_000913	16505	16505
UN	58	.	NC_000913	16516	16516
UN	59	.	NC_000913	16529	16529
UN	60	.	NC_000913	16534	16534
UN	61	.	NC_000913	16537	16538
UN	62	.	NC_000913	19990	20413
UN	63	.	NC_000913	223920	224572
UN	64	.	NC_000913	225117	225450
UN	65	.	NC_000913	227158	227158
UN	66	.	NC_000913	227160	227161
UN	67	.	NC_000913	227163	227163
UN	68	.	NC_000913	227165	227165
UN	69	.	NC_000913	227167	227167
UN	70	.	NC_000913	227170	227171
UN	71	.	NC_000913	227175	228487
UN	72	.	NC_000913	257908	258683
UN	73	.	NC_000913	270689	271113
UN	74	.	NC_000913	274143	274145
UN	75	.	NC_000913	274147	274147
UN	76	.	NC_000913	274150	274151
UN	77	.	NC_000913	274153	274153
UN	78	.	NC_000913	274156	274156
UN	79	.	NC_000913	274160	274160
UN	80	.	NC_000913	274162	274941
UN	81	.	NC_000913	274944	274945
UN	82	.	NC_000913	274947	274947
UN	83	.	NC_000913	274949	274954
UN	84	.	NC_000913	274957	274957
UN	85	.	NC_000913	279388	279745
UN	86	.	NC_000913	290831	291251
UN	87	.	NC_000913	315421	316294
UN	88	.	NC_000913	381429	382449
UN	89	.	NC_000913	391915	392777
UN	90	.	NC_000913	526028	526029
UN	91	.	NC_000913	526031	526502
UN	92	.	NC_000913	526505	526505
UN	93	.	NC_000913	566953	567825
UN	94	.	NC_000913	574798	575588
UN	95	.	NC_000913	608198	609113
UN	96	.	NC_000913	609115	609118
UN	97	.	NC_000913	688026	688848
UN	98	.	NC_000913	788946	789979
UN	99	.	NC_000913	1094451	1095319
UN	100	.	NC_000913	1299499	1300697
UN	101	.	NC_000913	1396211	1396211
UN	102	.	NC_000913	1396221	1396221
UN	103	.	NC_000913	1396224	1396224
UN	104	.	NC_000913	1396229	1397083
UN	105	.	NC_000913	1432442	1432443
UN	106	.	NC_000913	1432843	1433026
UN	107	.	NC_000913	1433843	1433929
UN	108	.	NC_000913	1468116	1469079
UN	109	.	NC_000913	1469450	1470304
UN	110	.	NC_000913	1470312	1470312
UN	111	.	NC_000913	1470322	1470323
UN	112	.	NC_000913	1528482	1528482
UN	113	.	NC_000913	1528488	1528987
UN	114	.	NC_000913	1571058	1571058
UN	115	.	NC_000913	1571065	1571176
UN	116	.	NC_000913	1571571	1571571
UN	117	.	NC_000913	1571576	1571576
UN	118	.	NC_000913	1571580	1571581
UN	119	.	NC_000913	1571586	1571586
UN	120	.	NC_000913	1571592	1571592
UN	121	.	NC_000913	1571596	1571662
UN	122	.	NC_000913	1634282	1634284
UN	123	.	NC_000913	1634286	1634432
UN	124	.	NC_000913	1634436	1634436
UN	125	.	NC_000913	1634453	1634453
UN	126	.	NC_000913	1651031	1651032
UN	127	.	NC_000913	1651039	1651381
UN	128	.	NC_000913	1978503	1979278
UN	129	.	NC_000913	2066930	2067135
UN	130	.	NC_000913	2069154	2070087
UN	131	.	NC_000913	2070089	2070095
UN	132	.	NC_000913	2070097	2070106
UN	133	.	NC_000913	2070108	2070108
UN	134	.	NC_000913	2070110	2070114
UN	135	.	NC_000913	2070121	2070121
UN	136	.	NC_000913	2101956	2102825
UN	137	.	NC_000913	2170381	2171266
UN	138	.	NC_000913	2289095	2289095
UN	139	.	NC_000913	2289097	2289865
UN	140	.	NC_000913	2289876	2289876
UN	141	.	NC_000913	2289884	2289884
UN	142	.	NC_000913	2514470	2514470
UN	143	.	NC_000913	2514475	2514475
UN	144	.	NC_000913	2514480	2515456
UN	145	.	NC_000913	2726249	2729043
UN	146	.	NC_000913	2729045	2729045
UN	147	.	NC_000913	2729748	2729748
UN	148	.	NC_000913	2729757	2729757
UN	149	.	NC_000913	2729760	2729760
UN	150	.	NC_000913	2729764	2729764
UN	151	.	NC_000913	2729766	2729767
UN	152	.	NC_000913	2729769	2730776
UN	153	.	NC_000913	2996550	2997488
UN	154	.	NC_000913	3130277	3130277
UN	155	.	NC_000913	3130289	3131156
UN	156	.	NC_000913	3131159	3131159
UN	157	.	NC_000913	3186279	3187221
UN	158	.	NC_000913	3187224	3187224
UN	159	.	NC_000913	3187226	3187226
UN	160	.	NC_000913	3187232	3187232
UN	161	.	NC_000913	3187240	3187240
UN	162	.	NC_000913	3365740	3366554
UN	163	.	NC_000913	3423845	3424477
UN	164	.	NC_000913	3424821	3426630
UN	165	.	NC_000913	3426636	3426636
UN	166	.	NC_000913	3427007	3427007
UN	167	.	NC_000913	3427009	3428353
UN	168	.	NC_000913	3428356	3428357
UN	169	.	NC_000913	3428364	3428365
UN	170	.	NC_000913	3428738	3428775
UN	171	.	NC_000913	3470358	3470551
UN	172	.	NC_000913	3583619	3584001
UN	173	.	NC_000913	3619458	3620904
UN	174	.	NC_000913	3620907	3620907
UN	175	.	NC_000913	3620916	3620916
UN	176	.	NC_000913	3621258	3622122
UN	177	.	NC_000913	3652235	3653033
UN	178	.	NC_000913	3666577	3666740
UN	179	.	NC_000913	3762416	3763899
UN	180	.	NC_000913	3764271	3764271
UN	181	.	NC_000913	3764273	3765082
UN	182	.	NC_000913	3765084	3765085
UN	183	.	NC_000913	3765088	3765088
UN	184	.	NC_000913	3765091	3765091
UN	185	.	NC_000913	3942235	3943196
UN	186	.	NC_000913	3944299	3944299
UN	187	.	NC_000913	3944301	3945417
UN	188	.	NC_000913	4035344	4035599
UN	189	.	NC_000913	4035940	4036908
UN	190	.	NC_000913	4036912	4036912
UN	191	.	NC_000913	4036916	4036916
UN	192	.	NC_000913	4036922	4036922
UN	193	.	NC_000913	4038031	4038489
UN	194	.	NC_000913	4038896	4039226
UN	195	.	NC_000913	4039237	4039237
UN	196	.	NC_000913	4039587	4040456
UN	197	.	NC_000913	4166478	4168042
UN	198	.	NC_000913	4168752	4168752
UN	199	.	NC_000913	4168756	4171444
UN	200	.	NC_000913	4171449	4171452
UN	201	.	NC_000913	4176760	4176897
UN	202	.	NC_000913	4208290	4209547
UN	203	.	NC_000913	4209562	4209562
UN	204	.	NC_000913	4210227	4212950
UN	205	.	NC_000913	4296200	4296200
UN	206	.	NC_000913	4296268	4296268
UN	207	.	NC_000913	4498347	4499267
UN	208	.	NC_000913	4507676	4508528
UN	209	.	NC_000913	4542990	4542993
