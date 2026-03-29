echo "Answer 3 questions to create your manifesto"
echo " "

read -p "1. One open source tool you use every day: " TOOL

read -p "2. In one word, what does freedom mean to you: " FREEDOM

read -p "3. One thing you would build and share freely: " BUILD

DATE=$(date)

OUTPUT="my_manifesto.txt"

echo "My Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo " " >> $OUTPUT
echo "Every day I use $TOOL which is free for everyone." >> $OUTPUT
echo "To me freedom means $FREEDOM." >> $OUTPUT
echo "One day I will build $BUILD and share it freely." >> $OUTPUT
echo "Open source means sharing knowledge with the world." >> $OUTPUT

echo " "
echo "Your manifesto has been saved to $OUTPUT"
echo " "
cat $OUTPUT