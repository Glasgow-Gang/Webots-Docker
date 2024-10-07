#!/bin/bash

export HOME=/root

if [ ! -d "$HOME/Webots-Controller" ]; then
    echo "Cloning controller..."
    cd "$HOME" && git clone https://github.com/Glasgow-Gang/Webots-Controller
fi

if [ ! -d "$HOME/Webots-World" ]; then
    echo "Cloning Webots-World..."
    cd "$HOME" && git clone https://github.com/Glasgow-Gang/Webots-World
fi
