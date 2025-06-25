#!/bin/bash -l
#SBATCH -A naiss2025-22-417
#SBATCH -p main
#SBATCH --mem=200GB
#SBATCH -J 16S_amp
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=lokeshwaran.manoharan@nbis.se
#SBATCH --error=../logs/nfcore_ampliseq_16S.err
#SBATCH --output=../logs/nfcore_ampliseq_16S.out
#SBATCH -t 1-00:00:00

module load bioinfo-tools
module load PDC singularity

export NXF_WORK=../scratch
export NXF_SINGULARITY_CACHEDIR=../scratch/singularity_cache

./nextflow run ../../ampliseq \
    -profile singularity \
    --project "naiss2025-22-417" \
    --input "../data/16s_samplesheet.tsv" \
    --outdir "../results/ampliseq_16S_output" \
    --FW_primer "CTACGGGNGGCWGCAG" \
    --RV_primer "GACTACHVGGGTATCTAATCC" \
    --min_read_counts 5 \
    --ignore_empty_input_files \
    --double_primer \
    --ignore_failed_trimming \
    --ignore_failed_filtering \
    --min_len_asv 350 \
    --max_len_asv 700 \
    --dada_taxonomy_rc \
    -c "../config/denoise.conf" \
    -resume