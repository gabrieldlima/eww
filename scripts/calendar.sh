#!/bin/sh

LOCK="$HOME/.cache/eww-calendar.lock"

open() {
    eww close calendar
    rm $LOCK
}

close() {
    eww open calendar
    touch $LOCK
}

if [ -f "$LOCK" ]; then
    open
else
    close
fi
