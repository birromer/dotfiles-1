#!/bin/sh

# robust script, stops in case of failure
set -euf

# this script is supposed to be downloaded and ran before the cloning of
# this repository, i.e. run this script to clone
# example usage: chmod +x ./clone_repo.sh; ./clone_repo.sh

# definitions
GIT_DIR="$HOME/.cfg/"
GIT_REPO="git@github.com:hcpsilva/dotfiles.git"
GIT_ALIAS="GIT_DIR=$GIT_DIR GIT_WORK_TREE=$HOME git"

# set-up
echo "alias dotgit='$GIT_ALIAS'" >> $HOME/.$(basename $SHELL)rc
echo $GIT_DIR >> $HOME/.gitignore

# cloning
git clone --bare $GIT_REPO $GIT_DIR

# make sure we checkout (if before where any duplicates)
$GIT_ALIAS checkout -f

# set so that this repo can't see untracked files (otherwise madness)
$GIT_ALIAS config --local status.showUntrackedFiles no
