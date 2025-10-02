# !/bin/bash
# check if three 3 arguments are provided
if ["$#" -ne 3 ]; then
    echo "Usage: $0 day 1 90 "
    exit 1
fi 

# Assign argument to variables
dirName=$1
start=$2
end=$3

#Loop from start to end

for ((i=start; i<=end; i++))
do 
   sudo mkdir "${dirName}${i}"
done
echo "Yeaaa done my work Directories created successfully from ${dirName} ${start} to ${dirName}${end}"