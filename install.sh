#!/bin/bash

if [[ ! -d "$HOME/.config/kitty/" ]]; then
  mkdir -p "$HOME/.config/kitty/"
fi
echo "Installing Isotope theme to $HOME/.config/kitty/kitty.conf"
curl -s https://raw.githubusercontent.com/Isotope-Theme/kitty/master/isotope.conf >> $HOME/.config/kitty/kitty.conf
