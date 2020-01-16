### RNA-seq data to reveal novel response mechanism to bacterial within host wound tissues

Shicheng Guo, Thao Le, Jennifer L Anderson, Sanjay Shukla, 2019

Sanjay introduced the research background and I proposed 3 analysis strategies and aims (12/09/2019)
* transcriptome different between wound tissues and normal tissues (skin and immnune cells)
* bacterial transcript nework and host transcript network correlation
* deconvolute mix host transcript patterns to sigle-cell contribution. 

root:

~/hpc/project/RnaseqBacterial/extdata/rnaseq


#### Timeline:

* 01/16: nothing was mentioned by rRNA deplete in the protocol from Thao and Jeniffer (thinking about why?)
* 01/15: at least another way to measure the ratio of bacteria to host genome size to compare with reads distribution.
* 01/15: think about the time points of the sampling, early immnue response? or late immune response? 
* 01/11/2020, Just find CLARK have a new version and updated to [CLARKSCV1.2.6.1](http://clark.cs.ucr.edu/Tool/), in MCRI CHG1 server
* 01/10/2020, USA300 protein annotation were collected and the most recent one is from [Uniprot:2,607 protein](extdata/uniprot-proteome_UP000001939.gff)
* 01/09/2020, Let's check what's the difference between `USA300(CP000255.1)`, `MW2(BA000033.2)` and `CP019590.1`
* 01/07/2020, Sanjay mentioned the genomic annoation to USA300 is not well prepared. Maybe I need to updated it. 
* 01/06/2020, US300 http://bacteria.ensembl.org/Staphylococcus_aureus_subsp_aureus_usa300_fpr3757/Info/Index
* 01/06/2020: Sanjay said [US300](http://bacteria.ensembl.org/Staphylococcus_aureus_subsp_aureus_usa300_fpr3757/Info/Index) should be correct reference genome rather than my previous used version
* 12/28:I find [90% reads](https://github.com/Shicheng-Guo/RnaseqBacterial/blob/master/extdata/mapping.md) are not located in human or Staphylococcus. I want to know where these reads come from?
* [Staphylococcus aureus](https://www.ncbi.nlm.nih.gov/genome/154), 10908 genomes, the genus Staphylococcus are pathogens of humans and other mammals
* 12/27/2019: EBV port to receive EBV alignment: https://ebv.wistar.upenn.edu/tools.html
* 12/27/2019: try to extract first 1000 reads and submit blast query from the website port NCBI and check microbe.
* 12/27/2019: No response from Ryan, try to install by myself. failed, install require administrative root, give up
* 12/26/2019: installed however the script cannot run since we don't have perl module `Archive::Tar`contact Ryan
* 12/25/2019: install local blast in BIRC10 `/home/local/MFLDCLIN/guosa/hpc/tools/ncbi-blast-2.10.0/bin/blastn`
* 12/24/2019: alignment RNA-seq data with blastn to check what happened? and why the mapping ratio is so low.
* 12/22/2019: [1st-pass STAR](STARmanual.pdf) completed and started [2nd-pass STAR](https://groups.google.com/forum/#!msg/rna-star/4dhcEGFMiK0/XoMh6rB7CwAJ) and received sorted bam files ([about 2-pass](2pass-star.md))
* 12/18/2019: Deconvolution analysis to RNA-seq data to CD4+, CD8+ and B-cells and other white cells with [deconvSeq](https://github.com/Shicheng-Guo/deconvSeq)
* 12/18/2019: sam and bam files were saved in `~/hpc/project/RnaseqBacterial/extdata/rnaseq/bam`
* 12/18/2019: RNA-seq alignment completed and data were saved in `~/hpc/project/RnaseqBacterial/extdata/rnaseq`
* STAR2-pass pipeline was also prepared to do the RNA-seq analysis since majority TCGA data are from STAR2
* Gene-level quantifications: read counts and TPM values will be generated [withRNA-SeQC v1.1.9](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3356847/) and [HTSeq - FPKM](https://docs.gdc.cancer.gov/Encyclopedia/pages/HTSeq-FPKM/)
* 12/12/2019: download GENCODE 26 (https://www.gencodegenes.org/human/release_26.html) for the alignment
* confirmed with Sanjay to remove 8 from current analysis since it is not Staph Aureus, but Staph capitus
* ask Sanjay to check '8' sample which we cannot find in the clinical informaiton files (8: Staph capitus)
* Jennifer share [some laboratory novel information, N=54](https://github.com/Shicheng-Guo/RnaseqBacterial/blob/master/extdata/102816%20cDNA%20Sample%20list-Sanjay-2019.xlsx), 54 samples -> 40 cDNA -> 24 fastqs.  
* 12/12/2019: I ask Tao to prepare filename and smapleid connection file and protocol for RNA-seq 
* 12/12/2019: Sanjay sent me the [clinical information n=30](https://github.com/Shicheng-Guo/RnaseqBacterial/blob/master/extdata/Subject%20Info%20Abscess%20Study%20no%20MRN.xlsx) without connection file between filename and sampleid
* 12/10/2019: [24 sample id](./extdata/S24_id.txt) is extracted and wait for clinical information(`urgent`).
* check the raw data: /mnt/bigdata/Genetic/Projects/Shukla_cDNA/data/all_samples/*.fastq
* 12/09/2019: [IRB approved](./extdata/IRB/Outcome_Letter_SUL10110_IRB00000673.pdf): Role of Putative Toxin Genes in Infections due to Community Associated MRSA
* 11/27/2019: `/mnt/bigdata/Genetic/Projects/Shukla_cDNA/data/all_samples/*.fastq`
* 11/25/2019: `/mnt/bigdata/Genetic/Projects/Shukla_cDNA/report`
* 11/25/2019: Terrie works to add me to IRB of Sanjay's `SUL10110`
* 11/23/2019: Further Discuss methylation in MS project with Sanjay
* 11/23/2019: Discuss methylation in MS project with Sanjay
* 11/22/2019: Discuss RNA-seq project with Sanjay

#### Supplementary:
Data analysis flow-chart was as the following. It's okay even microbe RNA-seq data is not the same pipeline.
![](gene-expression-quantification-pipeline-v2.png)

