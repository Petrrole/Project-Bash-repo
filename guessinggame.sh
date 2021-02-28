#!/usr/bin/env bash
# File: guessinggame.sh

function filecount() 
{
  find . -maxdepth 1 -type f | wc -l	
 }
result=$(filecount) 

while true
do
	echo "How many files do you think there are in this directory? Enter value:"
    read resp
    if [[ $resp -gt $result ]]
      then
      echo "Not correct.Value is too high"
    fi
    if [[ $resp -lt $result ]]
      then
      echo "Not correct. Value is too low"
    fi
    if [[ $resp = $result ]]
      then 
      echo "Congratulations! You answered correctly."
      break
    fi
done