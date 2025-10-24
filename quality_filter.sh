#!/bin/bash

mkdir -p  nanofilt_porechop_files
for i in porechop_files/*.fastq;do

nombre=$(basename "$i")

NanoFilt -q 10 "$i"> "nanofilt_${i}";

done
