#!/bin/bash

source_dir="/home/flo/nvim"
target_dir="/home/flo/.config/nvim"

if [ -d "$target_dir" ]; then
	echo "nvim config dir already present, check manually"
else
	ln -s "$source_dir" "$target_dir"
fi
