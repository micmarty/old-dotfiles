#!/bin/env bash
  
wid="$1"
#class="$2"
#instance="$3"
#eval "$4"
title="$(xtitle "$wid")"

if [[ "$title" = 'Picture-in-Picture' ]]
then
    echo 'state=floating'
    echo 'rectangle=800x500+700+100'
    echo 'sticky=on'
fi