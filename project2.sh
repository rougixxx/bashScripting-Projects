#!/bin/bash
# DIGITAL clock
while : 
do
	clear
	figlet `date +%H:%M:%S`
	sleep 1
done
