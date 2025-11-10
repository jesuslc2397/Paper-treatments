#!/bin/bash

#Analysis of ARGs with ResFinder database. ONT reads are converted to .fna files previously.

cd nanofilt_porechop_files/

for i in *.fastq; do
sed -n '1~4s/^@/>/p;2~4p' ${i} > ${i}.fna;
echo "--- searching ARGs by blastn vs Resfinder on sample ${i}"; 

 blastn -query "${i}.fna" -db /home/alumno/Desktop/Analisis_resistoma/resfinder/resfinder/resfinder -out blastn_${i}.txt -outfmt "6 qseqid sseqid pident length mismatch gaps qstart qend sstart send evalue bitscore slen qcov qseq" -culling_limit 1 -evalue 1E-10 -perc_identity 80;

mv blastn_${i}.txt ../resfinder_analysis
rm ${i}.fna
done


