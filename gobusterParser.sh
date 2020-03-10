#!/bin/sh

# Short script to parse gobuster Found URLs and prepend the hostname to output a file with hostname and path

# Defining variables
echo "Please define the target hostname/url:"
read varhost
echo "Please define the gobuster output of target:"
read varurl

# Manipulating strings
cat $varurl 2> /dev/null | grep Found | cut -d " " -f 2 | cut -b 2- > targetURLs.txt
sed -i -e 's/^/'$varhost/ targetURLs.txt
echo "--------------------------------------------------------------------------------------------------------"
cat targetURLs.txt
echo "--------------------------------------------------------------------------------------------------------"
echo "Targets saved to targetURLs.txt. If file is empty, did you define the absolute path of to gobuster fuzz?"
echo ""
