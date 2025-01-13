#!/bin/bash

simulation_list="cirrus-cpu-M_archer2-R-100pc cirrus-cpu-M_archer2-R-90pc cirrus-cpu-M_archer2-R-80pc cirrus-cpu-M_archer2-R-70pc cirrus-cpu-M_archer2-R-60pc cirrus-cpu-M_archer2-R-50pc cirrus-cpu-M_archer2-R-40pc cirrus-cpu-M_archer2-R-30pc cirrus-cpu-M_archer2-R-20pc cirrus-cpu-M_archer2-R-10pc cirrus-cpu-M cirrus-cpu-R"

for simulation in $simulation_list
do
   echo "Analysing: ${simulation}"
   python simulation_analysis.py -i ../${simulation}/data/input/2024-09_CPU-jobs.json -d ../${simulation}/data/output -p ${simulation}
done