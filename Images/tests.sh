#!/bin/bash

cd results
rm -r *
cd ..

last_index=0 # max 172
repetitions=10
./runTest.sh $last_index $repetitions
wait

last_index=9 # max 172
repetitions=10
./runTest.sh $last_index $repetitions
wait

last_index=49 # max 172
repetitions=10
./runTest.sh $last_index $repetitions
wait

last_index=99 # max 172
repetitions=10
./runTest.sh $last_index $repetitions
wait

last_index=172 # max 172
repetitions=10
./runTest.sh $last_index $repetitions
wait