#!/bin/bash

function set1()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnm'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/just_small_letters_max_4.txt
}

function set2()
{
    chars_to_combine='0123456789'
    max_pass_length=6
    file=~/Thesis/Testing/PasswordBreaker/just_numbers_max_6.txt
}

function set3()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnm'
    max_pass_length=6
    file=~/Thesis/Testing/PasswordBreaker/just_small_letters_max_6.txt
}

function set4()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_and_numbers_max_4.txt
}

function set5()
{
    chars_to_combine='qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789`~!@#$%^&*()_-=+[]{}\|;:,<.>/?'
    max_pass_length=4
    file=~/Thesis/Testing/PasswordBreaker/mix_of_letters_numbers_specials_max_4.txt
}

cd results/
rm -r *
cd ..

clear

set1
repetitions=1

command="./runTest.sh $chars_to_combine $max_pass_length $file $repetitions"
$command