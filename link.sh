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



if [ ! -d ~/.pip ]; then
  #Directory dont exists.
  mkdir ~/.pip/&& cp  ./.pip/pip.conf ~/.pip/
else
  cp  ./.pip/pip.conf ~/.pip/
fi

git config --global core.excludesfile ~/.gitignore_global
cp ./.npmrc ~/.npmrc
cp ./.yarnrc ~/.yarnrc
cp ./.gitignore_global ~/.gitignore_global
