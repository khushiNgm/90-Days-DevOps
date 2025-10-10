# !/bin/bash
# variables

backup_dir="/home" # Change this to yoour backup directory
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_files="${backup_dir}/backup_${timestamp}.tar.gz"

# Create a backup 

sudo tar -czf $backu_file /home/backup # Change thsi to the directory ou want to backup 
echo "Backup created at $backup_file "
