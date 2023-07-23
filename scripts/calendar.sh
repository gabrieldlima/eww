#!/bin/sh

LOCK="$HOME/.cache/eww-calendar.lock"
EWW="$HOME/.local/src/eww/target/release/eww"

open() {
    $EWW close calendar
    rm $LOCK
}

close() {
    $EWW open calendar
    touch $LOCK
}

if [ -f "$LOCK" ]; then
    open
else
    close
fi
