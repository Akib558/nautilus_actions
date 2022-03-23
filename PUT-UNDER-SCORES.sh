#!/bin/bash
# zenity --entry --entry-text="`echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | sed 's/.*\///'`"
echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | while read 'file'
do
    # echo "1" | cat >> "pp"
    var=$(echo -n "$file" | sed 's/.*\///')
    echo "$var" | cat >> "pp"
    var2=$(echo "${var// /_}")
    
    echo "$var2" | cat >> "pp"
    # echo -n "$file" | cat >> "pp"
    # mv "$var" $(echo ${var// /_})
    
    echo "-------------------------" | cat >> "pp"
    # echo "$var -- $var2" | cat >> "pp"

    mv "$var" "$var2"
done
exit

