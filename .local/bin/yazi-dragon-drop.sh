#!/bin/sh
# $1 = hovered file, rest = selected files (may be empty)
hovered="$1"
shift
if [ "$#" -gt 0 ]; then
    exec dragon-drop -x -i -T -a "$@"
else
    exec dragon-drop -x -i -T "$hovered"
fi
