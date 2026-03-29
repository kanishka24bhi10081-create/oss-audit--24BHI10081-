#!/bin/bash
# Script 4: Log File Analyzer
# Author: Your Name
# What this does: Reads a log file and counts how many lines have a keyword
# How to run: ./script4_log_analyzer.sh /var/log/dpkg.log warning

# Get the file name from the user when running the script
LOGFILE=$1

# Get the keyword to search (default is "error" if nothing is typed)
KEYWORD=${2:-"error"}

# Start the counter at zero
COUNT=0

# Check if the user forgot to type a file name
if [ -z "$LOGFILE" ]; then
    echo "Please provide a log file"
    echo "Example: ./script4_log_analyzer.sh /var/log/dpkg.log warning"
    exit 1
fi

# Check if the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE"
    exit 1
fi

# Read the file line by line
while IFS= read -r LINE; do

    # Check if the line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then

        # Add 1 to the counter
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# Print the result
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Found   : $COUNT times"
echo " "
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5