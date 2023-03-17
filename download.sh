#!/bin/bash

#SBATCH --partition=shortterm
#SBATCH --mem=10GB
#SBATCH --mail-user=
#SBATCH --mail-type=ALL
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1

for i in `cat info`
do

echo "#!/bin/bash
#SBATCH --partition=shortterm
#SBATCH --mem=10GB
#SBATCH --mail-user=
#SBATCH --mail-type=ALL
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1

source /work/guo/soft/etc/profile.d/conda.sh
conda  activate atac
export PATH=/work/guo/soft/bin:/work/guo/soft/subread-2.0.4-Linux-x86_64/bin:$PATH

fastq-dump --split-3 $i

" > ${i}.dw.sh

sbatch ${i}.dw.sh


done
