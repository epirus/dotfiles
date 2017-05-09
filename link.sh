#!/bin/bash

if [ ! -f ~/.tmux.conf ]; then
  #File dont exists
  ln ./.tmux.conf ~/.tmux.conf
else
  rm ~/.tmux.conf&&ln ./.tmux.conf ~/.tmux.conf
fi

if [ ! -d ~/.config/nvim ]; then
  #Directory dont exists.
  mkdir ~/.config/nvim && cp -r ./.config/nvim/* ~/.config/nvim/
else
  cp -r ./.config/nvim/* ~/.config/nvim/
fi
