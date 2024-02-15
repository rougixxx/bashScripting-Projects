#!/bin/bash

# checking if an IP address alive or no
echo -n "[+] Enter the Ip address:"
read ip

regex="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"


if ! [[ $ip =~ $regex ]]
then
	echo "Not a valid Ip"
	exit 1
fi
IP_ADDRESS=${BASH_REMATCH[0]}

echo $ip 
ping -c 1 $ip &> /dev/null &

echo ====================================

if [ $? -eq 0 ]
then
	echo "Alive"
else
	echo "address not up"
fi
