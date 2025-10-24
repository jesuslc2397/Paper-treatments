#!/bin/bash
cd barcode*
exit_file="output_file"

for i in *fastq.gz;do
gunzip -c "$i" >> "$output_file";
done

