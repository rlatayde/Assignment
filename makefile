all: README.md

README.md: 
	echo "## The Unix Workbench Course Assignment" > README.md
	echo -n "**Run Date:** " >> README.md
	date >> README.md
	echo -n "\n**Number of lines of code in guessinggame.sh: **" >> README.md
	wc -l < ./guessinggame.sh >> README.md
