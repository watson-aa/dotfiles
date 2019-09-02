#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$HOME/dotfiles                    # dotfiles directory
olddir=$HOME/dotfiles_old             # old dotfiles backup directory
files="bash_profile vim vimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [[ -L "$HOME/.$file" ]]; then
        echo "$HOME/.$file is already a symlink"
    else
        echo "Moving $file from ~ to $olddir"
        mv $HOME/.$file $HOME/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file $HOME/.$file
   fi
done

# install git-aware-prompt
echo "Installing git-aware-prompt"
mkdir ~/.bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git

cd ~
source ~/.bash_profile
