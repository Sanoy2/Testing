#!/bin/bash


# matrixesNumber=$1
# matrixesDimension=$2
# numberOfThreads=$3
# fileLabel=$4
# repetitions=$5 # how many time the test should be performed

start=$(date +"%T")
repetitions=10

function set1()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=1
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set2()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=2
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set3()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=4
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set4()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=10
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

repetitions=10

cd results/ 
rm -r *
cd ..

set1
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

end=$(date +"%T")

echo
echo "start : $start"
echo "end   : $end"