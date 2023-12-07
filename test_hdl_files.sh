#!/bin/zsh

proj="$1"

for file in $(ls projects/$1/ | grep "\.tst$"); do
    echo "$file \t" | tee -a "projects/$1/test_outputs.txt"
    ./tools/HardwareSimulator.sh "./projects/$1/$file" 2>&1 | tee -a "projects/$1/test_outputs.txt" 

done

