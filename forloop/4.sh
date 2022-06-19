#!/bin/bash -x


read -p "Enter start of range " num1;
read -p "Enter end of range" num2;
prime=0;
for (( num = $num1 ; num <= $num2 ; num++ ))
do
  for (( count = 2; count <= $((num /2)); count++ ))
  do
    if [ $(($num % count)) == 0  ]
    then
      echo "$num is not prime";
      prime=1;
      break;
    fi
  done
  if [ $prime == 0  ]
  then
    echo "$num is prime";
    prime=0;
  fi
prime=0;
done

exit 0;
