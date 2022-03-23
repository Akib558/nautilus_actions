#!/bin/bash
pattern1=`zenity --entry --entry-text='replace'`
if [ "$?" -eq 1 ]
then
    exit
fi
pattern2=`zenity --entry --entry-text='by'`
if [ "$?" -eq 1 ]
then
   exit
fi
for file in $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
   do
     rename "s/$motif1/$motif2/g" "$file"
done
zenity --info --text="Done"
