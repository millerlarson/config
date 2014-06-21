#!/bin/bash
if [ "$1" == "-h" ]; then
echo "$0 Usage:"
echo "Create symlinks for github configs"
echo "Will skip symlinking existing directories due to bahavior of ln"
exit 0
fi

cd $HOME/config/dotfiles
for file in *
do
# Generate list of files to symlink
echo "$HOME/.${file} -> $HOME/config/dotfiles/${file}"
done
echo

# Prompt for confirmation
read -p "Create symlinks [ y/n ]? " choice
case "$choice" in
  y|Y|yes|Yes|YES )
  echo "Creating links:"
  for file in *
  do
    # Check if we're dealing with a directory before making symlink
    # ln will create a link -in- a dir if it exists ineasd of replacing it
    if [ ! -d $HOME/config/dotfiles/${file} ]; then
      # echo "$HOME/config/dotfiles/${file} $HOME/.${file}"
      ln -sfv $HOME/config/dotfiles/${file} $HOME/.${file}
    else
      echo "- Skipping Directory: $HOME/.${file}"
    fi
  done
  ;;
  n|N|no|No|NO )
  echo; echo "Aborted..."
  ;;
  * )
  echo "Bad Choice..."
  ;;
esac

# remove dot from beginning of filename
# I plan to use this later for renaming
# Files placed into config/dotfiles/
# for i in .*; do echo "${i#.}"; done
