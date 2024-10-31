# The script for ancestral sequence reconstrction (ASR) analysis

#################### amino acid ####################
##### get timetree with branch length by PD1 amino acid sequence
iqtree -s 5133_NT_AL.filtered10.aa.fasta -st AA -te timetree.treefile -mset WAG,JTT,LG -pre ./timetree_branch
##### run lazarus to get ASR result
# set parameters based on the best evolutionary model using IQTREE
python project-lazarus-master/lazarus.py --alignment 5133_NT_AL.filtered10.aa.fasta --tree timetree_branch.treefile --model project-lazarus-master/paml/dat/jones.dat --outputdir ./lazarus_result_JTTtree_branch --asrv 4 --alpha 1 --branch_lengths 'fixed' --codeml --gapcorrect --outgroup [Enhydra_lutris_kenyoni,Eumetopias_jubatus,Phoca_vitulina,Mustela_erminea,Pan_troglodytes,Lynx_canadensis,Oryctolagus_cuniculus,Pongo_abelii,Camelus_dromedarius,Theropithecus_gelada,Prionailurus_bengalensis,Callorhinus_ursinus,Equus_asinus,Rhinopithecus_roxellana,Equus_quagga,Vicugna_pacos,Myotis_myotis,Neogale_vison,Galeopterus_variegatus,Panthera_tigris,Equus_caballus,Canis_lupus_dingo,Ursus_maritimus,Trachypithecus_francoisi,Pteropus_giganteus,Hylobates_moloch,Zalophus_californianus,Artibeus_jamaicensis,Tursiops_truncatus,Macaca_thibetana_thibetana,Colobus_angolensis_palliatus,Globicephala_melas,Bos_mutus,Balaenoptera_musculus,Rhinolophus_ferrumequinum,Rhinopithecus_bieti,Panthera_leo,Bubalus_bubalis,Macaca_fascicularis,Budorcas_taxicolor,Ursus_americanus,Suricata_suricatta,Lontra_canadensis,Odocoileus_virginianus_texanus,Odobenus_rosmarus_divergens,Myotis_brandtii,Ailuropoda_melanoleuca,Pteropus_alecto,Piliocolobus_tephrosceles,Cercocebus_atys,Cebus_imitator,Phocoena_sinus,Lemur_catta,Cervus_elaphus,Sus_scrofa,Nomascus_leucogenys,Carlito_syrichta,Monodon_monoceros,Mustela_putorius_furo,Meles_meles,Hyaena_hyaena,Ursus_arctos,Lagenorhynchus_obliquidens,Panthera_uncia,Pipistrellus_kuhlii,Ceratotherium_simum_simum,Halichoerus_grypus,Delphinapterus_leucas,Myotis_lucifugus,Choloepus_didactylus,Bos_indicus,Orcinus_orca,Felis_catus,Vulpes_lagopus,Vulpes_vulpes,Mirounga_angustirostris,Hipposideros_armiger,Homo_sapiens,Sapajus_apella,Cervus_canadensis,Mandrillus_leucophaeus,Macaca_mulatta,Gorilla_gorilla_gorilla,Phyllostomus_hastatus,Macaca_nemestrina,Pteropus_vampyrus,Myotis_davidii,Papio_anubis]

#################### codon ####################
##### get tree with branch length by PD1 codon sequence
iqtree -s 5133_NT_AL.filtered10.fasta -mset HKY,JC,K81,K81u,F81,TN,GTR -te timetree.treefile -pre ./timetree_cds_branch
##### run lazarus to get ASR result
# set parameters based on the best evolutionary model using IQTREE
python project-lazarus-master/lazarus.py --alignment 5133_NT_AL.filtered10.fasta --tree timetree_cds_branch.treefile --model project-lazarus-master/paml/dat/jones.dat --outputdir ./lazarus_result_TNtree_codeml --asrv 4 --alpha 1 --branch_lengths 'fixed' --codeml --gapcorrect --outgroup [Enhydra_lutris_kenyoni,Eumetopias_jubatus,Phoca_vitulina,Mustela_erminea,Pan_troglodytes,Lynx_canadensis,Oryctolagus_cuniculus,Pongo_abelii,Camelus_dromedarius,Theropithecus_gelada,Prionailurus_bengalensis,Callorhinus_ursinus,Equus_asinus,Rhinopithecus_roxellana,Equus_quagga,Vicugna_pacos,Myotis_myotis,Neogale_vison,Galeopterus_variegatus,Panthera_tigris,Equus_caballus,Canis_lupus_dingo,Ursus_maritimus,Trachypithecus_francoisi,Pteropus_giganteus,Hylobates_moloch,Zalophus_californianus,Artibeus_jamaicensis,Tursiops_truncatus,Macaca_thibetana_thibetana,Colobus_angolensis_palliatus,Globicephala_melas,Bos_mutus,Balaenoptera_musculus,Rhinolophus_ferrumequinum,Rhinopithecus_bieti,Panthera_leo,Bubalus_bubalis,Macaca_fascicularis,Budorcas_taxicolor,Ursus_americanus,Suricata_suricatta,Lontra_canadensis,Odocoileus_virginianus_texanus,Odobenus_rosmarus_divergens,Myotis_brandtii,Ailuropoda_melanoleuca,Pteropus_alecto,Piliocolobus_tephrosceles,Cercocebus_atys,Cebus_imitator,Phocoena_sinus,Lemur_catta,Cervus_elaphus,Sus_scrofa,Nomascus_leucogenys,Carlito_syrichta,Monodon_monoceros,Mustela_putorius_furo,Meles_meles,Hyaena_hyaena,Ursus_arctos,Lagenorhynchus_obliquidens,Panthera_uncia,Pipistrellus_kuhlii,Ceratotherium_simum_simum,Halichoerus_grypus,Delphinapterus_leucas,Myotis_lucifugus,Choloepus_didactylus,Bos_indicus,Orcinus_orca,Felis_catus,Vulpes_lagopus,Vulpes_vulpes,Mirounga_angustirostris,Hipposideros_armiger,Homo_sapiens,Sapajus_apella,Cervus_canadensis,Mandrillus_leucophaeus,Macaca_mulatta,Gorilla_gorilla_gorilla,Phyllostomus_hastatus,Macaca_nemestrina,Pteropus_vampyrus,Myotis_davidii,Papio_anubis]
