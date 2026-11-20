#!/bin/bash
#
# Script Name : clear-files.sh
# Author      : James Gabriel Verceluz
# Date        : November 20, 2026
# Description : Deletes all files inside the files/ directory so the
#               file-creation script can be tested again from the
#               start. The files/ directory itself is kept.
# Usage       : ./clear-files.sh
#

read -rp "Enter directory to clear: " DIR

ITALIC="\033[3m"
BOLD="\033[1m"
RED="\033[31m"
GREEN="\033[32m"
END="\033[0m"

if [ ! -d "$DIR" ]; then
	printf "${RED}Error${END}: Directory $DIR does not exist."
	exit 1
fi

read -rp 'Are you sure? (y/N)? ' DECISION

if [ "$DECISION" = "y" ] || [ "$DECISION" = "Y" ]; then
	clear
	rm -rf "$DIR"/*
	printf "${GREEN}Successfully${END} cleared directory ${BOLD}$DIR${END} \n"
	printf "Running command: ${ITALIC}ls -l $DIR${END} \n"
	ls -l $DIR
else
	echo "Script aborted."
fi	
