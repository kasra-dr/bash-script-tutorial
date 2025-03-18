#!/bin/bash

read -p "Please enter your direcroty path: " directory_path
list_files() {
    for file in $(ls "$1"/*); do
    echo $file
    if [[ -d $file ]]; then
      list_files $file
    fi
  done
}

list_files $directory_path

