#!/bin/bash
#
# Script Name : lab-254-challenge.sh
# Author      : James Gabriel Verceluz
# Date        : November 20, 2026
# Description : Creates the next batch of 25 empty files named
#               James<number>. Each run continues from the highest
#               number that already exists in the directory.
# Usage       : ./lab-254-challenge.sh

read -p "Enter your name: " NAME

if [ ! -d "files" ]; then
	mkdir "files"
fi

GREEN="\033[32m"
END="\033[0m"
COUNT=$(ls files/ | grep -E '^james[0-9]+$' | wc -l)

for(( i=COUNT+1; i<=COUNT+25; i++ )) do
	touch "files/$NAME$i"
	printf "${GREEN}Successfully${END} created file $NAME$i\n"
done

