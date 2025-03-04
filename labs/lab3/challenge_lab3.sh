#!/bin/bash

# Display the current date and time in local and UTC formats
echo "Basic Information about my system"
echo "Date and time in UTC and local:"
echo $(date +'%m/%d/%y %T') "UTC"
echo $(date -u +'%m/%d/%y %T') "EDT"

# Display information about the computer
echo -e "\nSome information about my system:"
echo "$(uname -s) $(uname -r)"

# Display RAM information
echo -e "\nRAM Information:"
free -h


# Display disk space usage
echo -e "\nDisk Space Usage:"
df -h



