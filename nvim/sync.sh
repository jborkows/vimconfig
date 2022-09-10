#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim
cp -r $SCRIPT_DIR/* ~/.config/nvim
Checc me

