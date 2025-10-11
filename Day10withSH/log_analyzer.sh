#!/bin/bash
<< README
this is a code for perform log anylizer 
README

# Function to diplay usage
usage() {
    echo "Usage: $0 /root/logs/day10.log"
    exit 1
}

# Check if the log file path is provided
if [ $# -ne 1 ]; then 
    usage
fi

LOG_FILE=$1

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Error: Log file $LOG_FILE does not exist."
  exit 1
fi

# Variable 
ERROR_KEYWORD="ERROR"
CRITICAL_KEYWORD="CRITICAL"
DATE=$(date +"%Y-%m-%d")
SUMMARY_REPORT="summary_report_$DATE.txt"
ARCHIVE_DIR="processed_logs"

#CREATE A SUMMARY REPORT
{
    echo "Date of analysis: $DATE"
    echo "Log file name: $LOG_FILE"

} > "$SUMMARY_REPORT"

#TOtal lines processed

TOTAL_LINES=$(wc -l < "$LOG_FILE")
echo "Total lines processes: $TOTAL_LINES" >> "$SUMMARY_REPORT"

#Count the number of error message 
ERROR_COUNT=$(grep -c "$ERROR_KEYWORD" "$LOG_FILE")
echo "Total error count: $ERROR_COUNT " >> "$SUMMARY_REPORT"

#LIST of critical events with line numbers
echo "List of critical events with line numbers:" >> "$SUMMERY_REPORT"
grep -n "$CRITICAL_KEYWORD" "LOG_FILE" >> "$SUMMARY_REPORT"

#Identify the top 5 most comman error message 
declare -A error message

while IFA= read -r line; do
    if [[ "$line" == *"$ERROR_KEYWORD"* ]]; then
     message=$(echo "$line"$ERROR_KEYWORD" '{print $2}' )
       ((error_mesaagr["message"]++ ))
       fi
 done < "$LOG_FILE"

# SORT and display top 5 error message
 
 echo "Top 5 error messges with their occurence count: " >> "$SUMMARY_REPORT"

for message in "${!error_message[@]}"; do
  echo "${error_message[$message]} $message"
done | sort -rn | head -n 5 >> "$SUMMARY_REPORT"

#Optional: Archive or move processed log files
if [ ! -d "$ARCHIVE_DIR" ]; then
  mkdir -p "$ARCHIVE_DIR"
fi
mv "$LOG_FILE" "$ARCHIVE_DIR/"

echo "LOG file has been moved to $ARCHIVE_DIR"
# Print the summary report
cat "$SUMMARY_REPORT"

    