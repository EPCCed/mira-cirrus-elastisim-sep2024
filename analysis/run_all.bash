basedir=$PWD

cd ..
sets=$(ls -d cirrus-cpu-M*)
sets="cirrus-cpu-R ${sets}"

cd ${basedir}

for dataset in ${sets}
do
   echo ${dataset}
   cd ../${dataset}/data/output
   gunzip node_utilization.csv.gz
   cd ${basedir}
   python3 simulation_analysis.py -p ${dataset} -d ../${dataset}/data/output -i ../${dataset}/data/input/2024-09_CPU-jobs.json
done

