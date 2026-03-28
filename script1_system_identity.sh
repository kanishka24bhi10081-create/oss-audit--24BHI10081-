#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software
# Purpose: Displays system info like a welcome screen

# --- Variables ---
STUDENT_NAME="Your Name"        # Your full name
SOFTWARE_CHOICE="Git"           # Your chosen OSS software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)              # Gets Linux kernel version
USER_NAME=$(whoami)             # Gets current logged-in user
UPTIME=$(uptime -p)             # Gets how long system has been running
DISTRO=$(lsb_release -d | cut -f2)   # Gets distro name (e.g. Ubuntu 22.04)
CURRENT_DATE=$(date '+%d %B %Y %H:%M')  # Gets current date and time
HOME_DIR=$HOME                  # Gets home directory path

# --- Display formatted output ---
echo "=================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "=================================="
echo ""
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "Distribution    : $DISTRO"
echo "Logged in as    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo ""
echo "-- License Info --"
echo "Linux (WSL/Ubuntu) is licensed under GPL v2"
echo "This means: you are FREE to use, study, modify, and share it."
echo "=================================="