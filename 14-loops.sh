#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access."
    exit 1
fi
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"

# By default shell will not execute, only execute when called
VALIDATE() {
    if [ $? -eq 0 ]; then
        echo "$1 installed . . . SUCCESS"
    else
        echo "$1 installation . . . FAILURE"
        exit 1
    fi
}

for package in $@ # sudo bash 14-loops.sh nginx mysql nodejs
do
    apt install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package installation" 
done