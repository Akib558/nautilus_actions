#!/bin/bash
set -e
set -u
set -o pipefail

if result="$("zenity --question --title="Confirmation" --text="Enter Zip File Name" --add-entry="Directory Name")"; then
  echo "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}" | while read -r selected_file; do
     file="$(basename "$selected_file")"
     mv "${file}" "${result}"
   done
fi
