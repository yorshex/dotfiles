#!/bin/sh
df /dev/sda1 -h | sed '2!d' | awk -F' ' '{print " " $4}'
