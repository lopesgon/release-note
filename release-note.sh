#!/bin/sh
# By flopes
# 1 - copy/paste script in project folder
# 2 - update project (git rebase)
# 3 - run script where first parameter is previous tag deployed

FILENAME=release-note.txt

if [ ! -n "$1" ]
then
	echo "$0 - Error! You must provide a start tag value"
    exit
else
	echo "Starting Release Note Generator shell script..."
fi

git log $1..$2 --pretty=format:"* %s" > $FILENAME

echo "... ending Release Note Generator shell script."