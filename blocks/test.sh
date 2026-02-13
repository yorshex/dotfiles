#!/bin/sh

for file in `command ls`; do
	echo $file: `./$file`
done
