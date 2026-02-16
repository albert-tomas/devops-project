#!/bin/bash

#Analyzes disk usage for a given directory and displays:
#     - Total disk usage
#     - Top 3 largest files/directories

# Usage:
#   ./disk_usage.sh <directory>

SOURCE_DIR="$1"

if [ -z "$SOURCE_DIR" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: '$SOURCE_DIR' is not a valid directory."
    exit 1
fi

TOTAL_USAGE=$(du -sh "$SOURCE_DIR" 2>/dev/null | cut -f1)
printf "Total disk usage of %s: %s\n\n" "$SOURCE_DIR" "$TOTAL_USAGE"

printf "Top 3 largest files/directories in %s:\n" "$SOURCE_DIR"
du -h -d1 "$SOURCE_DIR" 2>/dev/null | sort -hr | head -n3
