#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Your Name
# What this does: Asks 3 questions and saves your OSS manifesto to a file

echo "Answer 3 questions to create your manifesto"
echo " "

# Ask question 1 and save the answer
read -p "1. One open source tool you use every day: " TOOL

# Ask question 2 and save the answer
read -p "2. In one word, what does freedom mean to you: " FREEDOM

# Ask question 3 and save the answer
read -p "3. One thing you would build and share freely: " BUILD

# Get today's date
DATE=$(date)

# Set the output file name
OUTPUT="my_manifesto.txt"

# Write the manifesto to the file
echo "My Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo " " >> $OUTPUT
echo "Every day I use $TOOL which is free for everyone." >> $OUTPUT
echo "To me freedom means $FREEDOM." >> $OUTPUT
echo "One day I will build $BUILD and share it freely." >> $OUTPUT
echo "Open source means sharing knowledge with the world." >> $OUTPUT

# Show the saved file on screen
echo " "
echo "Your manifesto has been saved to $OUTPUT"
echo " "
cat $OUTPUT