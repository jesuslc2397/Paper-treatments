#!/bin/bash

mkdir -p  assembly_files

for i in nanofilt_porechop_files/*.fastq;do

nombre=$(basename "$i")
flye --nano-hq "$i" -o "assembly_files" --meta;
done





