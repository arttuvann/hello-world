#!/bin/bash
############################
# Script for testing C++ code during development.
# Author: Arttu Vanninen
# Date created: 2023-10-22
# Date edited: 2023-10-22
#
############################

CUR_PATH=$PWD
#echo $CUR_PATH/variables.sh


. ./variables.sh
#echo $timedate
#sleep 2


#python3 python/tests/test_write_to_log.py -v

function get_all_files_in_folder() {
  # Get the path to the folder.
  folder_path="$1"

  # Create an empty array to store the files.
 #files=()

  # Iterate over the contents of the folder.
  for file in "$folder_path"/*; do
    echo $file
    # Add the file to the array if it is a regular file.
    if [ -f "$file" ]; then
      array_out+=("$file")
      echo array_out
    fi
  done

  # Return the array of files.
  return #"${files[@]}" no values returned in bash
}

#test_files="$(get_all_files_in_folder $tests_path)"
#v2
get_all_files_in_folder $tests_path
for e in $array_out;do
    echo $e
    echo "test1"
done

#echo $test_files
#
#python $tests_py -v