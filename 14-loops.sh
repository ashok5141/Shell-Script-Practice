#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access." | tee -a $LOGS_FILE
    exit 1
fi


mkdir -p $LOGS_FOLDER

# By default shell will not execute, only execute when called
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$1 installed . . . SUCCESS" | tee -a $LOGS_FILE
    else
        echo "$1 installation . . . FAILURE" | tee -a $LOGS_FILE
        exit 1
    fi
}

for package in $@ # sudo bash 14-loops.sh nginx mysql nodejs
do
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "$package installation" 
done