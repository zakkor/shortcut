#!/usr/bin/env bash

if [[ ! -d '/usr/local/bin' ]]; then
  sudo mkdir /usr/local/bin
fi
sudo cp ./shortcut.sh /usr/local/bin/shortcut
sudo chmod +x /usr/local/bin/shortcut

cat alias.sh >> ~/.bashrc
touch ~/.scrc
