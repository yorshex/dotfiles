#!/bin/sh
free | sed '2!d' | awk -F' ' '{printf " %d%%", $3/$2*100}'
