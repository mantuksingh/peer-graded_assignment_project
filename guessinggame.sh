#! /usr/bin/bash

# function to get the no of files in a current directory
pwd_files(){
	no_of_files=`ls -l | grep ^- | wc -l`
	return $no_of_files
}

# Calling the function (pwd_files)
pwd_files

# Storing the result of the function in variable files_cnt
files_cnt=$?

echo "Please guess how many files are in current directory: \c"

# Asking user to guess the number of files in current directory
read num

# Looping until user get the correct guess
while [ $files_cnt -ne $num ]
do
	if [ $num -gt $files_cnt -o $num -lt $files_cnt ]
	then
		echo "Your guess is either too low or too high"
		echo "Please try again to guess:"
		read num
	fi
done

# checking the files count and user's entered number. If it is equal, then congratulate the user
if [ $files_cnt -eq $num ]
then
	echo "Congratulations!! your guess is correct"
fi

# End of program



