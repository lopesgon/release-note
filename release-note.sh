#!/bin/sh
# By flopes
# 1 - copy/paste script in project folder
# 2 - add to .gitignore: release-note_*
# 3 - update project (git rebase)
# 4 - run script where:
# 		- first parameter is previous tag deployed
#		- second parameter is last tag deployed

if [ ! -n "$1" ]
then
	echo "$0 - Error! You must provide first parameter as start tag value"
    exit
else
	echo "Starting Release Note Generator shell script..."
fi

git log $1..$2 --pretty=format:"* %s" > release-note_$2.txt

echo "... ending Release Note Generator shell script."