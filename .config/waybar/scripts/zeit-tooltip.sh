#!/bin/bash

# Simple zeit tooltip
tracking=$(zeit tracking --no-colors)

if echo "$tracking" | grep -q '^ ▶ tracking'; then
    project=$(echo "$tracking" | sed -n 's/.* on \([^[:space:]]*\) for.*/\1/p')
    time=$(echo "$tracking" | sed -n 's/.* for \([0-9:]*h\).*/\1/p')
    cat <<EOF
Currently tracking: $project
Duration: $time

Left click: Stop/Switch task
Right click: Show details
EOF
else
    cat <<EOF
Zeit is idle

Left click: Start tracking
Right click: Show details
EOF
fi