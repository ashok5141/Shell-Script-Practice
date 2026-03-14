#!/bin/bash

echo "Please Enter your username: "
read P1

echo "Please Enter the other person's username: "
read P2

# When you use this command read -s "Password" notvisiable to users

echo "$P1: Hello $P2, how are you?"
echo "$P2: Hi $P1, I am fine. How are you?"
echo "$P1: I am doing good. What are you doing these days?"
echo "$P2: I am learning Shell Scripting. It is very interesting."
echo "$P1: That's great! Keep it up." 