#!/bin/bash

if [[ ! -d "$HOME/.config/kitty/" ]]; then
  mkdir -p "$HOME/.config/kitty/"
fi
curl -s https://wiki.archlinux.org/index.php/X_resources >> $HOME/.config/kitty/kitty.conf
