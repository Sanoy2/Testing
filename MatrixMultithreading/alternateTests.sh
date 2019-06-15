#!/bin/bash


# matrixesNumber=$1
# matrixesDimension=$2
# numberOfThreads=$3
# fileLabel=$4
# repetitions=$5 # how many time the test should be performed

rm results/*

threads_collection=(1 2 3 4 8)
matrixes_dimension_collection=(10 9 8 7 6 5 4 3 2 1)
matrixes_number=8
repetitions=10
fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"

start=$(date +"%T")

for matrix_dimension in "${matrixes_dimension_collection[@]}"
do
    for threads in "${threads_collection[@]}"
    do
        fileLabel="number-$matrixes_number-dim-$matrix_dimension-threads-$threads"
        command="./runTest.sh $matrixes_number $matrix_dimension $threads $fileLabel $repetitions"
        $command
        wait
        # echo $fileLabel
    done
done

# command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
# $command
# wait

end=$(date +"%T")

echo
echo "start : $start"
echo "end   : $end"