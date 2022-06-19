#!/bin/bash/ -x

read -p "enter a number to get its prime factors > " n

for (( i=2;i<=$n; i++ ))
do
        if [ $(( $n%$i )) -eq 0 ]
        then
                prime=0
                for (( j=2; j<=$(( $i/2 )); j++ ))
                do
                        if [ $(( $i%$j )) -eq 0 ]
                        then
                                prime=1
                        fi
                done

                if [ $prime -eq 0 ]
                then
                        echo $i" is a prime factor of "$n

                fi
        fi
done

