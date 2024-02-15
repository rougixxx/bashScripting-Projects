#!/bin/bash
matrix="1234567890azertyuiopqsdfghjklmwxcvbn!@#$%^&*"
length="$1"
i=0
# Random password Generator

while [ "${i:= 1}" -le "$length" ]
do
	pass="$pass${matrix:$(($RANDOM%${#matrix})):1}"
	let i++
done
echo $pass
