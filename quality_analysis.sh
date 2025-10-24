#!/bin/bash

for i in nanofilt_porechop_files/*.fastq;do

nombre_archivo=$(basename "$i")
NanoPlot --fastq "$i" -o NanoPlot/"plot_${nombre_archivo}" -f pdf;

done
