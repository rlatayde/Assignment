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
	read answer
}

question

while [[ $answer -ne $filescount ]]
do
	if [[ $answer -gt $filescount ]] 
	then
		echo "Your guesse is Too High! Try again.."
	else
		echo "Your guesse is Too Low! try again.."
	fi
	question
done
echo "Congrats! You guessed the correct number of files!"
