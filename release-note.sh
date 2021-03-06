#!/bin/sh
# By flopes

GREP_VALUE=ticket-

# 1 - copy/paste script in project root folder
# 2 - run: 
#		mkdir release-notes
#		chmod 755 release-note.sh
# 3 - add to .gitignore: 
#		release-notes
# 4 - update project (git rebase)
# 5 - run: ./release-note.sh param1 param2
# 		- param1 is previous tag deployed
#		- param2 is last tag deployed

if [ ! -n "$1" ]
then
	echo "$0 - Error! You must provide first parameter as start tag value"
    exit
else
	echo "Starting Release Note Generator shell script..."
fi

# Git options to customize script
OPT_GREP="-i --grep=$GREP_VALUE"

git log $1..$2 --pretty=format:"* %s" --no-merges $OPT_GREP > release-notes/release-note_$2.txt

echo "... ending Release Note Generator shell script."