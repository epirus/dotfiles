#!/bin/bash

if [ ! -f ~/.tmux.conf ]; then
  #File dont exists
  ln ./.tmux.conf ~/.tmux.conf
else
  rm ~/.tmux.conf&&ln ./.tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.zshrc ]; then
  #File dont exists
  ln ./.zshrc ~/.tmux.conf
else
  rm ~/.zshrc&&ln ./.zshrc ~/.zshrc
fi

if [ ! -d ~/.config/nvim ]; then
  #Directory dont exists.
  mkdir ~/.config/nvim && cp -r ./.config/nvim/* ~/.config/nvim/
else
  cp -r ./.config/nvim/* ~/.config/nvim/
fi

git config --global core.excludesfile ~/.gitignore_global
cp ./.npmrc ~/.npmrc
cp ./.yarnrc ~/.yarnrc
cp ./.gitignore_global ~/.gitignore_global
