#!/bin/sh

#------------------------------------------------------------------------------
# Script Name	: guessinggame.sh
# Author	: Rowell L. Atayde
# Date created	: 12/06/2020
#-------------------------------------------------------------------------------

filescount=$(ls -1 | wc -l)

function question 
{
	echo "Kindly guesse how many number of files in the current directory: "
	read guess
}

question

while [[ $guess -ne $filescount ]]
do
	if [[ $guess -lt $filescount ]] 
	then
		echo "Your guesse is Too low! Try again.."
	else
		echo "Your guesse is Too high! try again.."
	fi
	question
done
echo "Congrats! You guessed correct number of files!"
