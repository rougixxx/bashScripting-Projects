#!/bin/bash

# Random password generator

red="\e[1;31m"
blue="\e[1;33m"
reset="\e[0m"
case "$1" in 
 		"-h" | "--help")
 			echo "USAGE:$0 [-h | --help] [-c|--char] character"
 			echo "Example: $0 -c 8"
 			;;
 			"-c" | "--char")
				pass=`date | sha256sum | cut -c 1-$2`
				echo -e ${red}your $2 length password is:${reset} ${blue}$pass${reset}
			;;
				* )
				echo "USAGE:$0 [-h | --help] [-c|--char] character"
 				echo "Example: $0 -c 8"
 				;;
 esac
			

