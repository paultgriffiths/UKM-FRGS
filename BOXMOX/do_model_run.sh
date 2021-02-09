#!/bin/bash
# this should be put in the home directory on the Ubuntu machine
# it's designed that there's a directory on the windows partition
# that holds the input files
# and the output files

boxmox=boxmox/boxmox/bin/

expt=$1
model=$2
win_dir=$3
input_dir=$4
output_dir=$5

echo "COPY ACROSS FILES"
cp ${win_dir}/${input_dir}/BOXMOX.nml ${boxmox}/${expt}/
cp ${win_dir}/${input_dir}/InitialConditions.csv ${boxmox}/${expt}/
cp ${win_dir}/${input_dir}/Background.csv ${boxmox}/${expt}/
cp ${win_dir}/${input_dir}/Environment.csv ${boxmox}/${expt}/
cd ${boxmox}/${expt}/

sleep 2
echo "RUN MODEL"
./${model}.exe

sleep 2
echo "COPY BACK OUTPUT"
mv ${model}.conc ${win_dir}/${output_dir}
