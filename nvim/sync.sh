#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
GIT_DIR=~/vim-config/nvim
cp -r $SCRIPT_DIR/* $GIT_DIR
pushd $GIT_DIR
git add .
git commit -m "${1:changes}"
git show -1
popd


