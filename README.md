# cellranger_work_note_brief
Brief summary for the usage of cellranger use the public scRNAseq data


Data used:
https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE155816

Tool:
Cellranger 


Step:
1) Install the cellranger software and download the reference genome files from the 10X genomics website. 

2) Run the cellranger count command 

cellranger  count --id k82_t1 \
 --fastqs=/work/guo/test/keratinocyte \
 --sample=k82_t1 \
 --transcriptome=/refdata-gex-GRCh38-2020-A
 
 
 The Use 150G total RAM and 6 cpu per task, the run time is near 4h. 
 
 The results files include the DEGs for each cell cluster in text format and a summary html file. 
 
 
 *** To be noted, the download fastq file should change the name convention as >k82_t1_S1_L001_R1_001.fastq, id + **_S1_L001_R1_001.fastq**
 
 
 
