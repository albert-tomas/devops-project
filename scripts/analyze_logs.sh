#!/bin/bash

# Analyze system log files to identify error and warning messages.
# Displays the total count and the last three log entries.

LOG_FILE="/var/log/syslog"

NUM_ERRORS=$(grep -i "error" "$LOG_FILE" | wc -l)

printf "There are $NUM_ERRORS errors in file $LOG_FILE.\n"
printf "Displaying the last three error log entries:\n"

grep -i error $LOG_FILE | tail -3


