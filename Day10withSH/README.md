# Day 10 Task: Log Analyzer and Report Generator
## Challenge Title: Log Analyzer and Report Generator

## Scenario
I am a system administrator responsible for managing a network of servers. Every day, a log file is generated on each server containing important system events and error messages. As part of your daily tasks, you need to analyze these log files, identify specific events, and generate a summary report.

## Task
Write a Bash script that automates the process of analyzing log files and generating a daily summary report. The script should perform the following steps:

1. Input: The script should take the path to the log file as a command-line argument.

2. Error Count: Analyze the log file and count the number of error messages. An error message can be identified by a specific keyword (e.g., "ERROR" or "Failed"). Print the total error count.

3. Critical Events: Search for lines containing the keyword "CRITICAL" and print those lines along with the line number.

4. Top Error Messages: Identify the top 5 most common error messages and display them along with their occurrence count.

5. Summary Report: Generate a summary report in a separate text file. The report should include:</br>

■ Date of analysis</br>
■ Log file name</br>
■ Total lines processed</br>
■ Total error count</br>
■ Top 5 error messages with their occurrence count<br>
■ List of critical events with line numbers</br>

6. Optional Enhancement: Add a feature to automatically archive or move processed log files to a designated directory after analysis.

## Tips

⚪ Use grep, awk, and other command-line tools to process the log file.</br>
⚪ Utilize arrays or associative arrays to keep track of error messages and their counts.</br>
⚪ Use appropriate error handling to handle cases where the log file doesn't exist or other issues arise.