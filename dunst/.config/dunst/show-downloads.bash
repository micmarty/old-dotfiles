#!/bin/bash
appname=$1
summary=$2
body=$3

filename=$(echo $summary | grep -o '".*"' | tr -d '"')
bspc rule -a Alacritty --one-shot state=floating rectangle=900x500+500+200 focus=on sticky=on && alacritty --class Alacritty --command ranger --selectfile ~/Downloads/$filename
