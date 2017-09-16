#!/bin/bash

RCPATH="$HOME/.scrc"

declare -A shortcuts

# Read shortcuts from file
while read key val
do
  shortcuts["$key"]=$val
done < $RCPATH

# Set shortcut
if [ $2 ]
then
  # Expand path
  path=$(readlink -m $2)

  # Set new shortcut
  shortcuts["$1"]=$path

  # Empty out file
  > $RCPATH

  # Write new shortcuts
  for key in "${!shortcuts[@]}"
  do
    echo "$key ${shortcuts[$key]}" >> $RCPATH
  done

  echo $(pwd)
# Use shortcut
elif [ $1 ]
then
  echo "${shortcuts[$1]}"
else
  echo $(pwd)
#   printf "Usage:\n\tSet shortcut: sc <name> <path>\n\tGo to shortcut: sc <name>\n"
fi
