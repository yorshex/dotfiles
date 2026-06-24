#!/bin/sh

for file in *; do
	echo "$file: $(./"$file")"
done
