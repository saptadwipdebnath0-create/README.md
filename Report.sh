#!/bin/bash

# Define the output report file name
REPORT_FILE="system-report.txt"

# Start writing the report header
echo "==========================================" > "$REPORT_FILE"
echo "            SYSTEM REPORT                 " >> "$REPORT_FILE"
echo "  Generated on: $(date)" >> "$REPORT_FILE"
echo "==========================================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# 1. Hostname
echo "--- Hostname ---" >> "$REPORT_FILE"
hostname >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# 2. Kernel version
echo "--- Kernel Version ---" >> "$REPORT_FILE"
uname -r >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# 3. Disk usage
echo "--- Disk Usage ---" >> "$REPORT_FILE"
df -h --output=source,size,used,avail,pcent,target / >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# 4. Memory usage
echo "--- Memory Usage ---" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# 5. Top running processes (Top 5 by CPU usage)
echo "--- Top Running Processes (By CPU) ---" >> "$REPORT_FILE"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Print a success message to the terminal
echo "Success: System report has been saved to '$REPORT_FILE'"
