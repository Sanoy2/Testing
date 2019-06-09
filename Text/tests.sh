#!/bin/bash

cd results
rm -r *
cd ..

function set0()
{
    number_of_words=1000000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

function set1()
{
    number_of_words=500000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

function set2()
{
    number_of_words=100000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

function set3()
{
    number_of_words=50000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

function set4()
{
    number_of_words=10000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}


function set5()
{
    number_of_words=5000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

function set6()
{
    number_of_words=1000
    filepath=~/Thesis/Testing/Text/files/out$number_of_words.txt
    common_name="out$number_of_words"
    repetitions=10
}

set0
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set1
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set2
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set3
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set4
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set5
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait

set6
command="./runTest.sh $filepath $common_name $repetitions"
$command
wait
