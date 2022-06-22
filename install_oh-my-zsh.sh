#!/usr/bin/env bash
tar -xvzf ~/temp/oh-my-zsh.tar.gz -C ~/temp/
if [! -d ~/.oh-my-zsh]; then
  mkdir ~/.oh-my-zsh
fi
mkdir ~/.oh-my-zsh
cp -r  ~/temp/oh-my-zsh/* ~/.oh-my-zsh/
~/.oh-my-zsh/tools/install.sh


