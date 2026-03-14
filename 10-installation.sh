#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access."
    exit 1
fi

echo "Installing Nginx web server..."
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installed SUCCESS."
else
    echo "FAILURE to install Nginx."
    exit 1
fi