#!/bin/bash

OUT='out'

if [ -d "$OUT" ]; then
    rm -rf "$OUT"
fi
mkdir "$OUT"

cp -r .config "$OUT"
cp -r -L .local "$OUT"
cp .fehbg "$OUT"

