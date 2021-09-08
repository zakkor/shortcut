#!/usr/bin/env bash

if [[ ! -d '/usr/local/bin' ]]; then
    sudo mkdir /usr/local/bin
fi
sudo cp ./shortcut.sh /usr/local/bin/shortcut
sudo chmod +x /usr/local/bin/shortcut

# TODO: Add support for .bashrc
cat alias.sh >> ~/.zshrc
touch ~/.scrc
