#!/bin/sh

for file in `exec ls`; do
	echo $file: `./$file`
done
