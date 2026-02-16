#!/bin/bash

# Checks if a process is currently running and shows its PID.

# Usage:
#   ./process_check.sh <process>

PROCESS=$1

if [ -z "$PROCESS" ]; then
    echo "Usage: $0 <process>"
    exit 1
fi

# Get matching processes excluding the grep itself
MATCHES=$(ps aux | grep "$PROCESS" | grep -v grep)

# Count matches
NUM_PROCESSES=$(echo "$MATCHES" | grep -c .)

if [ "$NUM_PROCESSES" -eq 0 ]; then
    echo "Process '$PROCESS' not found."
    exit 1
else
    echo "Process '$PROCESS' is running."
    echo "PID(s):"
    echo "$MATCHES" | awk '{print $2}'
fi