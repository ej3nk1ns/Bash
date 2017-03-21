#!/bin/bash
# bash script with args
# call like this:   ./myarg.sh -u me -b Apple "Red pepper"
echo $1
echo $2

# this gets tedious, use the array of args $@
for i in $@
do
        echo $i
done
# but note this breaks inside "" in the output
# count variable is correct tho
echo "There were $# arguments passed in."

# flags, supply on cmd line as eg '-u me' no quotes but must be b4 other args.
# those with : after them return a value, others just set or not.
# the : at the beginning asks bash to tell us about unknown flags

while getopts :u:p:ab option; do
        case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what $OPTARG is!";;
	esac
done
echo "I identified the user as $user and/or password as $pass"

# or we can input data during runtime
echo "Please type your name:"
read name
echo "What is your password?"
read -s passwd

# or like this, with a prompt
read -p "What's your favourite animal? " animal

echo $name $passwd $animal

# menu style using select
select anml in "cat" "dog" "bird" "fish"
do
	echo "You chose $anml!"
	break
done
# another example
select opt in "cat" "dog" "quit"
do
	case $opt in
		cat) echo "Cats like to sleep.";;
		dog) echo "Dogs like fetching.";;
		quit) break;;
		*) echo "???";;
	esac
done
