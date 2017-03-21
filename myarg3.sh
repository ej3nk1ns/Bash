#!/bin/bash
# this program forces you to enter 3 args or won't run
if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires at least 3 arguments:
	username, userid and favourite number,
	EOM
else
	# program code goes here
	echo "Username: $1"
	echo "UserID: $2"
	echo "Favourite number: $3"
fi
