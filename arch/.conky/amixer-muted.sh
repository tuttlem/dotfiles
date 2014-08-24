#!/bin/bash

muted=$(amixer get Master -M | grep -oE '\[off\]')

if [[ -n $muted ]]; then
    echo 1
else
    echo 0
fi
