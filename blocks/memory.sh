#!/bin/sh
free | sed '2!d' | awk -F' ' '{print $3/$2*100}' | awk -F. '{print " "$1"%"}'
