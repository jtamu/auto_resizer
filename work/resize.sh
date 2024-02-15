#!/bin/bash

size=$SIZE
ext=$EXT
file=$1

if [[ ! $file =~ $ext ]]; then
	exit 0
fi

convert -resize $size $file tmp
mv tmp $file

echo "$file resizing completed!"
