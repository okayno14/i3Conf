#!/bin/bash

i3-msg -t subscribe -m '[ "window" ]'| jq --unbuffered -Mrc '. | select(.container.focused == true).container.window_properties.title'|
while IFS= read -r title; do
    Test=$(echo "$title" | colrm 75)
    echo "$Test"
done

