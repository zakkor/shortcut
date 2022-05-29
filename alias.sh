function sc() {
  if [ $2 ]
  then
    shortcut $1 $2
  elif [ "$1" = "--list" ]
  then
    cat "$HOME/.scrc"
  elif [ $1 ]
  then
    cd "$(shortcut $1)"
  else
    printf "Usage:\n\tSet shortcut: sc <name> <path>\n\tGo to shortcut: sc <name>\n\tList all existing shortcuts: sc --list\n"
  fi
}