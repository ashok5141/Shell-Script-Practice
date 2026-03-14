#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user access."
fi

echo "Installing Nginx web server..."
dnf install nginx -y