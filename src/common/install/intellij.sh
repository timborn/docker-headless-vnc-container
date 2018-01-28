#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install IntelliJ Ultimate"

mkdir -p $INTELLIJ_HOME
wget -qO- https://download.jetbrains.com/idea/ideaIU-2017.3.3.tar.gz | tar xz --strip 1 -C $INTELLIJ_HOME

# this gets created as part of the interactive stuff; maybe skip interactive?
tar xvzf $INST_SCRIPTS/intellij-setup.tgz -C $HOME

echo PATH=\$PATH:$INTELLIJ_HOME/bin >> $HOME/.bashrc
echo "alias intellij=/headless/intellij/bin/idea.sh" >> $HOME/.bashrc
