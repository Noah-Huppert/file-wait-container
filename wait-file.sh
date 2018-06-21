#!/usr/bin/env bash
#?
# wait-file - Waits for a file to be present
# 
# USAGE
#	wait-file FILE
#
# ARGUMENTS
#	1. FILE: File to wait for
#
# BEHAVIOR
#	Looks for the file every second until it exists. Then exits.
#?

# Arguments
file="$1"
if [ -z "$file" ]; then
	echo "Error file argument must be provided" >&2
	exit 1
fi

# Wait
printf "Waiting for \"$file\" file"

while [ ! -f "$file" ]; do
	printf "."
	sleep 1
done

# Found
echo -ne "\nFound \"$file\" file\n"
