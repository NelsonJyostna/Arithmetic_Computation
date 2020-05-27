#!/bin/bash -x



read -p "Enter a number :" a

read -p "Enter a number :" b

read -p "Enter a number :" c



D=`expr $a + $b \* $c`


E=`expr $a \* $b + $c`


F=`expr $c + $a / $b`


G=`expr $a % $b + $c`


declare -A Dict


Dict[1]="$D"
Dict[2]="$E"
Dict[3]="$F"
Dict[4]="$G"



counter=0

for i in ${Dict[@]}
do
   Array[(counter++)]=$i
done


printf '%s\n' "${Array[@]}" | sort -nr


printf '%s\n' "${Array[@]}" | sort -n

