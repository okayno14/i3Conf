#!/bin/bash

if [[ $BLOCK_BUTTON = "1" ]]; then
    xdg-open https://cldr.ru 1> /dev/null &
fi

date '+w:%V %d/%m/%Y %H:%M:%S'
