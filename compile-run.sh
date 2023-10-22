#!/bin/bash
############################
# Script for compiling and running C++ code during development.
# Author: Arttu Vanninen
# Date created: 2023-10-22
# Date edited: 2023-10-22
#
# Note: This is a very simple script to promote learning of C++. Consider adding variables, functions etc as needed.
#
############################

# Get the complete current path.
# There are some tricks for this, may not work.
CUR_PATH=$PWD

timedate=$(date +"%Y-%m-%d_%H-%M-%S")
output_filename="main_output_$timedate.txt"
output_path="$CUR_PATH/cpp/test/$output_filename"
logging_py="$CUR_PATH/python/logging/main.py"

touch $output_path
echo "test output" > $output_path
echo "Log file: $output_path"
echo "---"
cd cpp/src
echo "Moved to folder: $PWD"

echo "Compiling hello-world.c"
g++ main.cpp -o main
# or just:
# make hello-world

echo "Executing hello-world..."
echo "---"
# Write python version to output_path
python3 --version >> $output_path 2>&1
which python3 >> $output_path 2>&1 

# Redirect standard output and standard error to output_path
# Append to file for flexibility (e.g. later adding other programs in this script).
./main 2>&1 | tee --append $output_path

echo
echo "---"
echo "Execution over."