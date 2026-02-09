#!/bin/bash

#Generate a system users report by extracting username and shell from /etc/passwd

while IFS= read -r line; do
    awk -F: '{print "Username:", $1, "Shell:", $7}' <<< "$line" >> output/users_report.txt
done < /etc/passwd