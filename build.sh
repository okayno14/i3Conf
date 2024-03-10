#!/bin/bash

OUT='out'

if [ -d "$OUT" ]; then
    rm -rf "$OUT"
fi
mkdir "$OUT"

cp -r .config out/
cp -r -L .local out/
