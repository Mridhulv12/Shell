#!/bin/bash
read -p "Enter a directory name" DIR
if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
  echo "Directory '$DIR' created."
else
  echo "Directory '$DIR' already exists."
fi
