#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install IntelliJ Ultimate"

mkdir -p $INTELLIJ_HOME
wget -qO- https://download.jetbrains.com/idea/ideaIU-2017.3.3.tar.gz | tar xz --strip 1 -C $INTELLIJ_HOME

# TODO: INSTALL IS INTERACTIVE!  FIX THIS to be unattended
# $INTELLIJ_HOME/bin/idea.sh	# install
echo PATH=\$PATH:$INTELLIJ_HOME/bin >> $HOME/.bashrc
