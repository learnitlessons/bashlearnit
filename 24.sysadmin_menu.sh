#!/bin/bash

echo "Welcome to the Linux System Administration Menu!"

while true
do
	echo "Please choose an option"
	echo "1. Check system uptime "
	echo "2. View disk usage "
	echo "3. List top cpu-consuming processes "
	echo "4. Check available memory"
	echo "5. View system logs "
	echo "6. Check system load average "
	echo "7. Search for large files "
	echo "8. Exit"

	read -p "Enter your choice (1-8): " choice

	case $choice in
		1)
			echo "System uptime is: "
			uptime
			;;
		2)
			echo "Disk usage: "
			df -h
			;;
		3)
			echo "Top cpu-usage processes: "
			ps aux --sort=-%cpu | head -n 6
			;;
		4)
			echo "Available memory: "
			free -h
			;;
		5)
			echo "Last 10 line of system log: "
			sudo tail /var/log/syslog
			;;
		6)
			echo "System load avarage: "
			cat /proc/loadavg
			;;
		7)
			read -p "Enter the directory to search: "
			read -p "Enter the minimum file size:  "
			echo "Searching for the files larger than ${min_size}MB in ${search_dir}..."
			sudo find "$serch_dir" -type f -size +"${min_size}"M -exec ls -lh {} \; | sort -k5  -rh
			;;
		8)
			echo "Thank you for using Enhanced Linux System Administation Menu. Goodye!"
			exit 0
			;;
		*)
			echo "Invalid option. Please choose a number between 1 and 8."
			;;
	esac

	echo # Blanc line
	read -p "Please press Enter to continue..."

done




