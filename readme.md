### RNA-seq data to reveal novel response mechanism to bacterial within host wound tissues

Shicheng Guo, Thao Le, Jennifer L Anderson, Sanjay Shukla, 2019

Sanjay introduced the research background and I proposed 3 analysis strategies and aims (12/09/2019)
* transcriptome different between wound tissues and normal tissues (skin and immnune cells)
* bacterial transcript nework and host transcript network correlation
* deconvolute mix host transcript patterns to sigle-cell contribution. 

#### Update:

* Gene-level quantifications: read counts and TPM values will be generated [withRNA-SeQC v1.1.9](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3356847/) and [HTSeq - FPKM](https://docs.gdc.cancer.gov/Encyclopedia/pages/HTSeq-FPKM/)
* 12/12/2019: download GENCODE 26 (https://www.gencodegenes.org/human/release_26.html) for the alignment
* Ask Sanjay to check '8' sample which we cannot find in the clinical informaiton files (8: Staph capitus)
* Jennifer share [some laboratory novel information, N=54](https://github.com/Shicheng-Guo/RnaseqBacterial/blob/master/extdata/102816%20cDNA%20Sample%20list-Sanjay-2019.xlsx), 54 samples -> 40 cDNA -> 24 fastqs.  
* 12/12/2019: I ask Tao to prepare filename and smapleid connection file and protocol for RNA-seq 
* 12/12/2019: Sanjay sent me the [clinical information n=30](https://github.com/Shicheng-Guo/RnaseqBacterial/blob/master/extdata/Subject%20Info%20Abscess%20Study%20no%20MRN.xlsx) without connection file between filename and sampleid
* 12/10/2019: [24 sample id](./extdata/S24_id.txt) is extracted and wait for clinical information(`urgent`).
* check the raw data: /mnt/bigdata/Genetic/Projects/Shukla_cDNA/data/all_samples/*.fastq
* 12/09/2019: [IRB approved](Outcome_Letter_SUL10110_IRB00000673.pdf): Role of Putative Toxin Genes in Infections due to Community Associated MRSA
* 11/27/2019: `/mnt/bigdata/Genetic/Projects/Shukla_cDNA/data/all_samples/*.fastq`
* 11/25/2019: `/mnt/bigdata/Genetic/Projects/Shukla_cDNA/report`
* 11/25/2019: Terrie works to add me to IRB of Sanjay's `SUL10110`
* 11/23/2019: Further Discuss methylation in MS project with Sanjay
* 11/23/2019: Discuss methylation in MS project with Sanjay
* 11/22/2019: Discuss RNA-seq project with Sanjay


