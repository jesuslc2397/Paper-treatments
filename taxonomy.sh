#!/bin/bash

mkdir nanofilt_porechop_files/

for i in nanofilt_porechop_files/*.fastq;do

kraken2 --db kraken2_db --output ${i}_output.txt --report ${i}_report.txt --use-names $i
mv nanofilt_porechop_files/*.txt taxonomy_reads/
done
