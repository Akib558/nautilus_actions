#!/bin/bash
result="$(zenity --entry --title="Zip FIle Name"\
    --text="Zip File Name"\
    --add-entry="File Name")"
val2="$(zenity --list \
    --column Selection \
    --column Choice \
    TRUE normal \
    FALSE special_zip --radiolist)"

mkdir ${result} && cp * ${result}/
# if [[$? -ne 0]];then
# echo "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | while read 'file'
# do
#     var=$(echo -n "$file" | sed 's/.*\///')
#     cp "$var" ${result}/
#     cat "$file" >> "pp"
# done
#
# fi

if [[ $? -ne 0  ]]; then
    
    if [ "$val2" == "special_zip" ]; then
        tar -zcvf ${result}.tar.gz ${result} && rm -R ${result}
    elif [ "$val2" == "normal" ]; then
       zip -r -m ${result}.zip ${result}
    else
        exit 0 
    fi
fi
