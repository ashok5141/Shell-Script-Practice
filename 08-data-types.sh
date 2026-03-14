#!/bin/bash

NUM1=100
NUM2=200
Num3=Ashok

SUM=$((NUM1 + NUM2))
echo "Sum of $NUM1 and $NUM2: $SUM"

SUM=$((NUM1 + NUM3))
echo "Sum of $NUM1 and $NUM3: $SUM"


FRUITS=("Apple" "Banana" "Cherry")
echo "First fruit: ${FRUITS[0]}"
echo "Second fruit: ${FRUITS[1]}"
echo "Third fruit: ${FRUITS[2]}"

echo "All fruits: ${FRUITS[@]}"
