#!/bin/bash

#### Variables in Shell Scripting ####
echo "Welcome to Shell Scripting Practice"
echo "This is a practice script to learn about variables in Shell Scripting."

echo "All args passed to the script: $@"
echo "Number of args passed to the script: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Who is executing the script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of the background process: $!"
echo "All arguments passed to the script: $*"
echo "Exit status of the last command: $?"