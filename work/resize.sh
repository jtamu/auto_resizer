#!/bin/bash

size=x600
ext=png
file=$1

if [[ ! $file =~ .png ]]; then
	exit 0
fi

convert -resize $size $file tmp
mv tmp $file

echo "$file resizing completed!"
