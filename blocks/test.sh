#!/bin/sh

for file in *.sh; do
	[ "$file" = 'test.sh' ] && continue
	echo "$file: $(./"$file")"
done
