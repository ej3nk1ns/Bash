#!/bin/bash
# loop to insist on an argument
#read -p "Fav animal? " a  # if no default, can get a bit needy
read -p "Fav animal? [cat] " a
while [[ -z "$a" ]]; do
#	read -p "I need an answer! " a
	a="cat"
done
echo "$a was selected."

# some validation using regular expressions
read -p "What year? [nnnn] " a
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "A year as a 4 digit string, please [nnnn] " a
done

echo $a
