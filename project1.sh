#!/bin/bash

 # Display some general Information related to the system


while [ $# -gt 0 ]
do
	case "$1" in 
		"-h" | "--help" )
	    echo "Usage: bash $0 [Options...]"
	    echo Options: 
	    echo -e "\t" "-c, --cpuinfo"
	    echo -e "\t" "\t" "\t" "Get CPU information "
	    echo -e "\t" "-k, --kernal-info "
	    echo -e "\t" "\t" "\t" "Get Kernal information "
	    echo -e "\t" "-s, --sysinfo "
	    echo -e "\t" "\t" "\t" "Get system information "
	    echo -e "\t" "-fm, --free-mem "
	    echo -e "\t" "\t" "\t" "Get free space information "
	    echo -e "\t" "-ip, --ipaddr "
	    echo -e "\t \t \t Get Ip address"
	    echo 
	    echo "Created by Me :D"
	    exit 1
	    ;;
	    "-c" | "--cpuinfo" )
			cpu=`cat /proc/cpuinfo | grep -m 1 "model name"  | cut -c 14-50`
			echo CPU INFO: $cpu
			echo
			shift
			;;
			"-k" | "--kernal-info" )
				echo KERNAL VERSUION: `uname -r`
				echo
				shift
				;;
			"-s" | "--sysinfo" )
				sysinfo=`cat /etc/os-release | grep "PRETTY" | cut -d "\"" -f 2`
				echo SYSTEM IS: $sysinfo
				echo
				shift
				;;
				"-f" | "--freemem" )
					MEMORY=`free -m | grep "Mem" | awk '{print $4}'`
					echo FREE MEMORY Space: $MEMORY
					echo
					shift
					;;
					"-ip" | "--ipaddr" ) 
						echo IP ADDRESS: `hostname -I `
						echo
						shift
						;;
	esac
done
