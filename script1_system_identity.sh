STUDENT_NAME="Kanishka Patidar"


SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)

USER_NAME=$(whoami)


DATE=$(date)


UPTIME=$(uptime -p)

echo "================================"
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Date & Time  : $DATE"
echo "Uptime       : $UPTIME"
echo "OS License   : Linux is licensed under GPL v2"
echo "================================"