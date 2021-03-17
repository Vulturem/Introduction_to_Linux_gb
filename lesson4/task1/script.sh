#!/bin/bash
man sed > ./file1
cat ./file1 | tr [:lower:] [:upper:] > ./file2
cat ./file2 | sed '/^$/d' > file3
cp ./file1 ./main
cp ./file2 ./all_uppercase
cp ./file3 ./no_empty_strings
