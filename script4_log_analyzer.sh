
LOGFILE=$1


KEYWORD=${2:-"error"}

COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Please provide a log file"
    echo "Example: ./script4_log_analyzer.sh /var/log/dpkg.log warning"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE"
    exit 1
fi

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