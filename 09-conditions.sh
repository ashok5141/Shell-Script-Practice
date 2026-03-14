#!/bin/bash

Number=$1
if [ $Number -gt 20 ]; then
    echo "$Number is greater than 20."
else
    echo "$Number is not greater than 20."
fi