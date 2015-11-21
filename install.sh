echo 'Symlinking dotfiles...'


##########
# dotfiles directory
dir=~/dotfiles
# list of files/folders to symlink in homedir
files="bash_profile profile tmux bashrc vim vimrc"
##########

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# Delete any existing dotfiles in homedir, then create symlinks from the homedir to any files in the $dir
# directory specified in $files
for file in $files; do
    echo "Deleting existing dotfile: $file"
    rm ~/.$file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done


echo "Completed.... :)"
