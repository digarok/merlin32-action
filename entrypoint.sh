#!/bin/sh

M32=https://github.com/digarok/merlin32/releases/download/v1.1.8d/merlin32-ubuntu-latest-v1.1.8d.zip

curl -L $M32 -o merlin32.zip
unzip merlin32.zip
mv merlin32 /usr/bin
sh -c "cd $INPUT_SOURCE_DIR ; /usr/bin/merlin32 -V $INPUT_SOURCE_FILE $INPUT_MACRO_DIR"
