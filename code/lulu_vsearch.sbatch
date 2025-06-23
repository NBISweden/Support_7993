#!/bin/bash -l
#SBATCH -A naiss2025-22-417
#SBATCH -p main
#SBATCH --mem=100GB
#SBATCH -J vsearch
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lokeshwaran.manoharan@nbis.se
#SBATCH --error=../logs/lulu_vsearch.err
#SBATCH --output=../logs/lulu_vsearch.out
#SBATCH -t 1-00:00:00

module load bioinfo-tools
module load PDC singularity

singularity exec ../envs/vsearch_2.30.0--d7e4944ce38d8852.sif \
    vsearch --usearch_global ../results/ampliseq_16S_output/asv_length_filter/ASV_seqs.len.fasta \
        --db ../results/ampliseq_16S_output/asv_length_filter/ASV_seqs.len.fasta \
        --self --id .84 --iddef 1 \
        --userout ../results/lulu/match_list.txt -userfields query+target+id \
        --maxaccepts 0 --query_cov .9 --maxhits 10