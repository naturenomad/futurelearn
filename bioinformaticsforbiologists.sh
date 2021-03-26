


###########################
# Week 2 EXERCISE
###########################

# Using Diamonds.csv downloaded from the course site.

# Create an interactive Bash script called diamonds.sh.

# First, prompt the user to provide a cut and store their response in a variable called quality.

# If the user enters either Fair or Good, return Insufficient quality to proceed.

# If the user enters a value other than Premium, Ideal or Very Good, return Invalid cut.

# Otherwise, count the number of diamonds (rows) which have the user-defined cut. 
# Hint: look at the usage for grep to find an option that will count the number of lines which match a given pattern.


#!/usr/bin/env bash

read -p "Please provide a cut : " quality

echo $quality

if [[ ${quality} == "Fair" ]] || [[ ${quality} == "Good" ]]; then
  echo "Insufficient quality to proceed"
elif [[ ${quality} != "Premium" ]] && [[ ${quality} != "Ideal" ]] && [[ ${quality} != "Very Good" ]]; then
  echo "Invalid cut"
else
  grep -cF "${quality}" Diamonds.csv
fi


# Addendum : Find the distinct cut options in Diamonds.csv :

awk -F"," 'FNR>1 {print $2}' Diamonds.csv | sort | uniq
