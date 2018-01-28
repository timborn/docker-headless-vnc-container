#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install HOME Cusomizations"

echo "set -o vi" >> $HOME/.bashrc
echo "alias lf=\"ls -FC\"" >> $HOME/.bashrc

cat > $HOME/readme.txt <<EOF
The environment variable IMAGE_VERSION contains the unique identifier of the
image you are currently running.  When you report problems, please include
IMAGE_VERSION.
EOF
