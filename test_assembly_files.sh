#!/bin/zsh

proj="$1"
output_file="projects/$proj/test_outputs.txt"
rm "$output_file"

# Assemble all .asm files
for file in projects/$proj/*.asm; do
    ./tools/Assembler.sh "$file" 2>&1 | tee -a "$output_file"
done

# Test all .hack files
for file in projects/$proj/*.tst; do
    echo "Testing $file ..." 2>&1 | tee -a "$output_file"
    ./tools/CPUEmulator.sh "$file" 2>&1 | tee -a "$output_file"
done

