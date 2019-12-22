#!/bin/sh
# By flopes

FILENAME=release-note.txt

if [ ! -n "$1" ]
then
	echo "$0 - Error! You must provide a start tag value not set or NULL"
    exit
else
	echo "Starting Release Note Generator shell script..."
fi

git log $1..$2 --pretty=format:"* %s" > $FILENAME
