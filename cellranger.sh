#SBATCH --partition=shortterm
#SBATCH --mem=150GB
#SBATCH --mail-user=
#SBATCH --mail-type=ALL
#SBATCH --cpus-per-task=10
#SBATCH --nodes=1


cellranger  count --id k82_t1 \
 --fastqs=/work/guo/test/keratinocyte \
 --sample=k82_t1 \
 --transcriptome=/work/guo/test/keratinocyte/refdata-gex-GRCh38-2020-A
