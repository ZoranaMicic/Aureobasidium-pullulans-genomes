#!/bin/bash

# Download NCBI assembly summary
curl -O https://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_genbank.txt

head assembly_summary_genbank.txt

I found out that important columns for finding genome assemblies are 6th(taxid) and 20th(FTP path to the genome files).


# Extract FTP links from Aureobasidium pullulans
awk -F '\t' '$6==5580 {print $20}' assembly_summary_genbank.txt

# Download genome FASTA files
while read ftp; do
asm=$(basename $ftp)
curl -O $ftp/${asm}_genomic.fna.gz
done < ftp_links.txt

# Unzip files
gunzip *.fna.gz
