#!/bin/bash

#$number of matrixes   #$ dimensions   #$ repetitions

start=$(date +"%T")

repetitions=10

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
wait

end=$(date +"%T")

echo
echo "start : $start"
echo "end   : $end"
