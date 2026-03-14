#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access."
    exit 1
fi

echo "Installing Nginx web server..."
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installed . . . SUCCESS"
else
    echo "Nginx installation . . . FAILURE"
    exit 1
fi

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "MySQL installed . . . SUCCESS"
else
    echo "MySQL installation . . . FAILURE"
    exit 1
fi

dnf install nodejs -y

if [ $? -eq 0 ]; then
    echo "Node.js installed . . . SUCCESS"
else
    echo "Node.js installation . . . FAILURE"
    exit 1
fi