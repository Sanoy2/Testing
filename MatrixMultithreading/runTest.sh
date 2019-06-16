#!/bin/bash

# separator between labels and values, might be helpful to import data into csv/excel
separator=";"

repetitions=$5 # how many time the test should be performed

matrixesNumber=$1
matrixesDimension=$2
numberOfThreads=$3
fileLabel=$4

python_result_file="../results/pythonResults$fileLabel.txt"
dotnet_result_file="../results/dotnetResults$fileLabel.txt"
cpp_result_file="../results/cppResults$fileLabel.txt"

function write_labels()
{
    resultFile=$1
    echo -n "language$separator" > $resultFile
    echo -n "dimensions$separator" >> $resultFile
    echo -n "matrixes number$separator" >> $resultFile
    echo -n "number of threads$separator" >> $resultFile
    echo -n "real time (s)$separator" >> $resultFile
    echo -n "user time (s)$separator" >> $resultFile
    echo -n "system time (s)$separator" >> $resultFile
    echo -n "CPU usage (%)$separator" >> $resultFile
    echo -n "maximum resident set size of the process during lifetime (Kbytes)$separator" >> $resultFile
    echo -n "number of involuntarily context-switches$separator" >> $resultFile
    echo -n "number of voluntarily context-switches$separator" >> $resultFile
    echo "status code$separator" >> $resultFile
    
}

function perform_test()
{
    # general arguments - the same for all tested programs
    command=$1          # command thar should be executed during the test
    resultFile=$2       # the file to save results
    repetitions=$3      # how many times the test should run and append the result to result file

    matrixes_number=$4
    matrixes_dimension=$5
    num_of_threads=$6
    language=$7

    # file format:
    format="%e$separator"           # real elapsed time (in seconds)
    format=$format"%U$separator"    # user time         (in seconds)
    format=$format"%S$separator"    # system time       (in seconds)
    format=$format"%P$separator"    # CPU usage         ((%U + %S) / %E)
    format=$format"%M$separator"    # Maximum resident set size of the process during its lifetime, in Kbytes.
    format=$format"%c$separator"    # Number of times the process was context-switched involuntarily (because the time slice expired)
    format=$format"%w$separator"    # Number of waits: times that the program was context-switched voluntarily, for instance while waiting for an I/O operation to complete  
    format=$format"%x$separator"    # exit status (other than 0 is an error)
                                    # here for C++ status is never 0 :(

    wait

    for (( i=0; i<$repetitions; i++ ))
    do
        test_number=$(($i+1))
        echo Running test $test_number of $repetitions
        wait

        echo -n "$language$separator" >> $resultFile
        echo -n "$matrixes_dimension$separator" >> $resultFile
        echo -n "$matrixes_number$separator" >> $resultFile
        echo -n "$num_of_threads$separator" >> $resultFile
        
        wait

        /usr/bin/time -f $format $command 2>> $resultFile
        wait
        
    done
}

function python_tests()
{
    echo Starting python tests

    cd python

    resultFile=$python_result_file
    write_labels $resultFile

    command="python main.py $matrixesNumber $matrixesDimension $numberOfThreads"
    echo Running command: $command
    wait

    perform_test "$command" $resultFile $repetitions $matrixesNumber $matrixesDimension $numberOfThreads "Python"
    wait

    cd ..
    echo -e "Python tests finished\n"
}

function dotnet_tests()
{
    echo Starting C# tests

    cd dotnet
    
    resultFile=$dotnet_result_file
    write_labels $resultFile

    command="./dotnet $matrixesNumber $matrixesDimension $numberOfThreads"
    echo Running command: $command
    wait
    perform_test "$command" $resultFile $repetitions $matrixesNumber $matrixesDimension $numberOfThreads "C#"
    wait
    cd ..
    echo -e "C# tests finished\n"
}

function cpp_tests()
{
    echo Starting C++ tests

    cd cpp

    resultFile=$cpp_result_file
    write_labels $resultFile

    command="./a.out $matrixesNumber $matrixesDimension $numberOfThreads"
    echo Running command: $command
    wait
    perform_test "$command" $resultFile $repetitions $matrixesNumber $matrixesDimension $numberOfThreads "C++"
    wait
    cd ..
    echo -e "C++ tests finished\n"
}

echo -e "Tests started\n"

dotnet_tests
wait
cpp_tests
wait
python_tests
wait 

date 
echo All tests completed