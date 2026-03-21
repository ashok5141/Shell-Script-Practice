#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access." | tee -a $LOGS_FILE
    exit 1
fi


mkdir -p $LOGS_FOLDER

# By default shell will not execute, only execute when called
VALIDATE() {
    if [ $1 -eq 0 ]; then
        echo "$2  . . . SUCCESS" | tee -a $LOGS_FILE
    else
        echo "$2  . . . FAILURE" | tee -a $LOGS_FILE
        exit 1
    fi
}

for package in $@ # sudo bash 14-loops.sh nginx mysql nodejs
do
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "$package installation" 
done