#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access." | tee -a $LOGS_FILE
    exit 1
fi

# By default shell will not execute, only execute when called
VALIDATE() {
    if [ $? -eq 0 ]; then
        echo "$1 installed . . . SUCCESS" | tee -a $LOGS_FILE
    else
        echo "$1 installation . . . FAILURE" | tee -a $LOGS_FILE
        exit 1
    fi
}

echo "Installing Nginx web server..."
dnf install nginx -y &>> $LOGS_FILE
VALIDATE "Nginx"


dnf install mysql -y &>> $LOGS_FILE
VALIDATE "MySQL"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE "Node.js"