#!/bin/bash

#$number of matrixes   #$ dimensions   #$ repetitions

repetitions=2

cd results/ 
rm -r *
cd ..

clear

./runTest.sh 1000 3 $repetitions
wait
./runTest.sh 100 5 $repetitions
wait
./runTest.sh 20 8 $repetitions
wait
./runTest.sh 5 10 $repetitions