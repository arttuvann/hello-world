"""
  Python logging function
  Author: Arttu Vanninen, Github: arttuvann
  Date: 2023-10-22

  Template source: Google Bard
  LLM query: create a python function for logging the output for a C++ program, each entry should include timestamp
"""

import datetime
import subprocess
import sys



def log_output(output, timestamp):
  """Logs the output of a C++ program, with the timestamp prefixed to each line.

  Args:
    output: The output of the C++ program.
    timestamp: The timestamp.

  """

  with open("log.txt", "a") as f:
    f.write(f"{timestamp}: {output}\n")

## TODO: Move these to main() or their own functions
# Compile the C++ program.
subprocess.run(["g++", "-o", "output", "output.cpp"])

# Get the output of the C++ program.
output = subprocess.check_output("./output").decode()

# Log the output of the C++ program.
log_output(output, datetime.datetime.now())

def main():
  """Prints the contents of the file specified by the command line argument to the console."""

  filename = sys.argv[1]
  with open(filename, "r") as f:
    print(f.read())

if __name__ == "__main__":
  main()

