#!/bin/bash
mkdir trimmed_reads
SAMPLES=(
  "SLGFSK-N_231335"
  "SLGFSK-N_231335"
  "SLGFSK-T_231336"
  "SLGFSK-T_231336"
)

for SAMPLE in "${SAMPLES[@]}"; do

  fastp \
    -i "$PWD/${SAMPLE}_r1_chr5_12_17.fastq.gz" \
    -I "$PWD/${SAMPLE}_r2_chr5_12_17.fastq.gz" \
    -o "trimmed_reads/${SAMPLE}_r1_chr5_12_17.fastq.gz" \
    -O "trimmed_reads/${SAMPLE}_r2_chr5_12_17.fastq.gz" \
    --html "trimmed_reads/${SAMPLE}_fastp.html"
done
