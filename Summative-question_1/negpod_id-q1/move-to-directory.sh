#!/usr/bin/env bash

# Automatically move files to negpod_id-q1

# Check if /Summative-question_1/ directory exists
if [ -d "/Group-repo/Summative-question_1/" ]; then
    LIST=$(ls /Group-repo/Summative-question_1/)

    # Check if negpod_id-q1 directory does not exist
    if [ ! -d "negpod_id-q1" ]; then
        mkdir "negpod_id-q1"
    fi

    for FILE in $LIST; do
	if [ "$FILE" != "negpod_id-q1" ]; then
	       	if [ -e "/Group-repo/Summative-question_1/$FILE" ]; then
			cp -r "/Group-repo/Summative-question_1/$FILE" "negpod_id-q1"
                fi
	fi
done
fi
