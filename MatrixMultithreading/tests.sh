#!/bin/bash


# matrixesNumber=$1
# matrixesDimension=$2
# numberOfThreads=$3
# fileLabel=$4
# repetitions=$5 # how many time the test should be performed

start=$(date +"%T")
repetitions=10

function set1a()
{
    matrixesNumber=10
    matrixesDimension=12
    numberOfThreads=1
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set2a()
{
    matrixesNumber=10
    matrixesDimension=12
    numberOfThreads=2
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set3a()
{
    matrixesNumber=10
    matrixesDimension=12
    numberOfThreads=4
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set4a()
{
    matrixesNumber=10
    matrixesDimension=12
    numberOfThreads=10
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set1b()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=1
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set2b()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=2
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set3b()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=4
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set4b()
{
    matrixesNumber=10
    matrixesDimension=10
    numberOfThreads=10
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}


function set1c()
{
    matrixesNumber=10
    matrixesDimension=8
    numberOfThreads=1
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set2c()
{
    matrixesNumber=10
    matrixesDimension=8
    numberOfThreads=2
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set3c()
{
    matrixesNumber=10
    matrixesDimension=8
    numberOfThreads=4
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set4c()
{
    matrixesNumber=10
    matrixesDimension=8
    numberOfThreads=10
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set1d()
{
    matrixesNumber=10
    matrixesDimension=6
    numberOfThreads=1
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set2d()
{
    matrixesNumber=10
    matrixesDimension=6
    numberOfThreads=2
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set3d()
{
    matrixesNumber=10
    matrixesDimension=6
    numberOfThreads=4
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

function set4d()
{
    matrixesNumber=10
    matrixesDimension=6
    numberOfThreads=10
    fileLabel="number-$matrixesNumber-dim-$matrixesDimension-threads-$numberOfThreads"
}

repetitions=10

cd results/ 
rm -r *
cd ..

set1a
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set2a
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set3a
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set4a
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set1b
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set2b
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set3b
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set4b
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set1c
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set2c
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set3c
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set4c
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set1d
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set2d
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set3d
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

set4d
command="./runTest.sh $matrixesNumber $matrixesDimension $numberOfThreads $fileLabel $repetitions"
$command
wait

end=$(date +"%T")

echo
echo "start : $start"
echo "end   : $end"