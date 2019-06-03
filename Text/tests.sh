#!/bin/bash

cd results
rm -r *
cd ..

filepath=~/Thesis/Text/files/150.txt
common_name=150
repetitions=10
./runTest.sh $filepath $common_name $repetitions
wait

filepath=~/Thesis/Text/files/text.txt
common_name=text
repetitions=10
./runTest.sh $filepath $common_name $repetitions
wait

filepath=~/Thesis/Text/files/large.txt
common_name=large
repetitions=10
./runTest.sh $filepath $common_name $repetitions
wait
