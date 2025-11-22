#!/bin/sh

ZEIT_BIN=zeit

tracking=$($ZEIT_BIN tracking --no-colors)

if [[ "$1" == "popup" ]]
then
  if echo "$tracking" | grep -q '^ ▶ tracking'
  then
    notify-send "Zeit" "$tracking" -t 5000
  else
    notify-send "Zeit" "No active tracking session" -t 3000
  fi
  exit 0
fi

if [[ "$1" == "click" ]]
then
  ~/.config/rofi/applets/bin/zeit.sh
  exit 0
fi

# Handle JSON output for waybar
if [[ "$1" == "json" ]]
then
  if echo "$tracking" | grep -q '^ ▶ tracking'
  then
    # Parse current tracking format: " ▶ tracking TaskName on ProjectName for Duration"
    task=$(echo "$tracking" | sed -n 's/^ ▶ tracking \(.*\) on .* for .*/\1/p')
    project=$(echo "$tracking" | sed -n 's/^ ▶ tracking .* on \(.*\) for .*/\1/p')
    time=$(echo "$tracking" | sed -n 's/^ ▶ tracking .* for \(.*\)/\1/p')
    text="  $project | $time"
    tooltip="Currently tracking: $task\\nProject: $project\\nDuration: $time\\n\\nLeft click: Stop/Switch task\\nRight click: Show full details"
  else
    text="■"
    tooltip="Zeit is idle\\n\\nLeft click: Start tracking\\nRight click: Show details"
  fi

  jq -n --arg text "$text" --arg tooltip "$tooltip" '{text: $text, tooltip: $tooltip}'
  exit 0
fi

# Display concise format with icon (fallback for direct calls)
if echo "$tracking" | grep -q '^ ▶ tracking'
then
  # Extract project and time from the tracking output
  project=$(echo "$tracking" | sed -n 's/^ ▶ tracking .* on \(.*\) for .*/\1/p')
  time=$(echo "$tracking" | sed -n 's/^ ▶ tracking .* for \(.*\)/\1/p')
  echo " $project | $time"
else
  echo "■"
fi