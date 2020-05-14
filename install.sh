#!/bin/bash

if [[ ! -d "$HOME/.config/kitty/" ]]; then
  mkdir -p "$HOME/.config/kitty/"
fi
VARIANTS=("dark" "light" "quit")
select variant in "${VARIANTS[@]}"; do
  case $variant in
    "dark")
      echo "Installing Isotope Dark theme to $HOME/.config/kitty/kitty.conf"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/kitty/master/isotope-dark.conf >> $HOME/.config/kitty/kitty.conf
      break
      ;;
    "light")
      echo "Installing Isotope Light theme to $HOME/.config/kitty/kitty.conf"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/kitty/master/isotope-light.conf >> $HOME/.config/kitty/kitty.conf
      break
      ;;
    "quit")
      break
      ;;
    *)
      echo "invalid variant $REPLY"
      ;;
  esac
done
