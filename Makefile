all: README.md 

README.md:
	touch README.md

README.md: guessinggame.sh
	echo " #Project-Bash" > README.md
	echo "## Data: 2031-02-28" >> README.md
	echo "The number of lines in the program code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "Repository link Githab [a link](https://github.com/petrrole/Project-Bash-repo)" >> README.md
	echo "link to the page [a link](petrrole.github.io/Project-Bash-repo))" >> README.md