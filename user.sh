#! /bin/bash

function opt1()
{
	echo ""
	read -p "Enter the Username " userN
	adduser ${userN}
	echo "User addded "
}

function opt2()
{
	echo ""
	userN=$(whoami)
	echo "The list of Items on in home of ${userN}"
	ls /home/${userN}
}

function opt3()
{
	echo ""
	userN=$(whoami)
	echo "The permissions of home dir"
	ls -l /home/${userN}
}
function opt4()
{
	echo ""
	echo "Jobs those are running in the foreground"
	ps -a
}


while (( true ))
	echo ""
	echo "1. Add any User"
	echo "2. List Number of Intems"
	echo "3. Check permissions "
	echo "4. List Processes"
	echo "Else Exit "
	read -p "Enter the option " opt
#echo "Option ${opt}"
do
	case $opt in 
		'1')
			opt1
			;;
		'2')
			echo "Going in second option"
			opt2
			;;
		'3')
			opt3
			;;
		'4')
			opt4
			;;
		*)
			echo "Exiting"
			exit
	esac
done
