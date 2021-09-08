#!/usr/bin/env zsh

function readlinkf() {
  perl -MCwd -e 'print Cwd::abs_path shift' "$1";
}

RCPATH="$HOME/.scrc"

declare -A shortcuts

# Read shortcuts from file
while read key val
do
  shortcuts[$key]=$val
done < $RCPATH

# Set shortcut
if [ $2 ]
then
  # Expand path
  path=$(readlinkf $2)

  # Set new shortcut
  shortcuts[$1]=$path

  # Empty out file
  : > $RCPATH

  # echo ${shortcuts}

  # Write new shortcuts
  for key val in "${(@kv)shortcuts}"
  do
    echo "$key $val" >> $RCPATH
  done
# Use shortcut
elif [ $1 ]
then
  echo "${shortcuts[$1]}"
fi
