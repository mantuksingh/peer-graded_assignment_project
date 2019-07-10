README.md: guessinggame.sh
	echo "*Project Title*: **Peer-graded Assignment: Bash, Make, Git and Github**" > README.md
	echo "*Date when make was run: *"`date` >> README.md
	echo "*No of line of code in guessinggame.sh: **"`wc -l guessinggame.sh | awk '{print $$1}'` >> README.md

