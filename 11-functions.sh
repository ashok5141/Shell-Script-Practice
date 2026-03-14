#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access."
    exit 1
fi

# By default shell will not execute, only execute when called
VALIDATE() {
    if [ $? -eq 0 ]; then
        echo "$1 installed . . . SUCCESS"
    else
        echo "$1 installation . . . FAILURE"
        exit 1
    fi
}

echo "Installing Nginx web server..."
dnf install nginx -y
VALIDATE "Nginx"


dnf install mysql -y
VALIDATE "MySQL"

dnf install nodejs -y
VALIDATE "Node.js"