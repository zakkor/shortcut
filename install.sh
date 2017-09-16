#!/bin/bash

sudo cp ./shortcut.sh /usr/local/bin/shortcut
sudo chmod +x /usr/local/bin/shortcut

# TODO: Add support for .bashrc
cat alias.sh >> ~/.zshrc
