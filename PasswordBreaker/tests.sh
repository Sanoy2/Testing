#!/bin/bash

function set1a()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnm'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/just_small_letters_max_4.txt
    chosen_set="_set1a"
}

function set2a()
{
    chars_to_combine='0123456789'
    max_pass_length=6
    file=~/Thesis/Testing/PasswordBreaker/just_numbers_max_6.txt
    chosen_set="_set2a"
}

function set2b()
{
    chars_to_combine='0123456789'
    max_pass_length=8
    file=~/Thesis/Testing/PasswordBreaker/just_numbers_max_8.txt
    chosen_set="_set2b"
}


function set4()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_and_numbers_max_4.txt
    chosen_set="_set4"
}

function set5a()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789`~!@#$%^&*()_-=+[]{}\|;:,<.>/?'
    max_pass_length=2
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_numbers_specials_max_2.txt
    chosen_set="_set5a"
}

function set5b()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789`~!@#$%^&*()_-=+[]{}\|;:,<.>/?'
    max_pass_length=3
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_numbers_specials_max_3.txt
    chosen_set="_set5b"
}

function set5c()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789`~!@#$%^&*()_-=+[]{}\|;:,<.>/?'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_numbers_specials_max_4.txt
    chosen_set="_set5c"
}


# cd results/
# rm -r *
# cd ..

# clear

start=$(date +"%T")

set1a
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set2a
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set2a
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set4
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set5a
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set5b
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

set5c
repetitions=10
command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions $chosen_set"
$command
wait

end=$(date +"%T")
echo "start: $start"
echo "end  : $end"
