#!/usr/bin/env zsh

if [[ ! -d '/usr/local/bin' ]]; then
  sudo mkdir /usr/local/bin
fi
sudo cp ./shortcut.zsh /usr/local/bin/shortcut
sudo chmod +x /usr/local/bin/shortcut

cat alias.sh >> ~/.zshrc
touch ~/.scrc
