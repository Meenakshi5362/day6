#!/bin/bash -x

read -p "Enter a number > " num
for (( fact=1; $num>1; num-- ))
do
        fact=$(( fact*num ))
done
echo "factorial : "$fact
