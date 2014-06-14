#!/bin/bash

cd $HOME/config/dotfiles
for file in *
do
#  rm -rf $HOME/$file
  ln -sfv $HOME/config/dotfiles/${file} $HOME/.${file}
done
