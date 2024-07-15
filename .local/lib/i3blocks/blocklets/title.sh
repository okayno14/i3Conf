#!/bin/bash

i3-msg -t subscribe -m '[ "window" ]'| jq --unbuffered -Mrc '. | select(.container.focused == true).container.window_properties.title'|
while IFS= read -r title; do
    Test=$(echo "$title" | cut -c 1-80)
    echo "$Test"
done

