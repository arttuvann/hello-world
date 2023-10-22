#!/bin/bash
############################
# Script variables for compiling and running C++ code during development.
# Author: Arttu Vanninen
# Date created: 2023-10-22
# Date edited: 2023-10-22
#
############################


CUR_PATH=$PWD

timedate=$(date +"%Y-%m-%d_%H-%M-%S")
output_filename="main_output_$timedate.txt"
output_path="$CUR_PATH/cpp/test/$output_filename"
logging_py="$CUR_PATH/python/logging/main.py"
tests_path="$CUR_PATH/python/tests/"

$array_out #general use array because bash functions don't return values