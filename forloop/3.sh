#!/bin/bash -x
read -p "Enter any number > " no
prime=0
for(( count=2; count<=$(( $no/2 )); count++ ))
do
       if [ $(( $no%$count )) -eq 0 ]
       then
              prime=1;
       fi
done
if [ $prime -eq 0 ]
then
      echo $no" is prime"
else
      echo $no" is not prime"
fi

