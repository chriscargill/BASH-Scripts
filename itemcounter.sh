#!/bin/bash
# Use this to count the number of folders and files in a given directory

# TODO - Executables still not showing up, need to figure it out

if [ ! $# -eq 0 ] ; then
    args="$@"
else
    args="./*"
fi
echo ARGS: "$args"
for location in $args; do
    if [ -d "$location" ]; then
        directories="$directories $location"
        echo -e "Found \e[32mDIR\e[0m: $location"
    elif [ -f "$location" ]; then
        files="$files $location"
        echo -e "Found \e[38;5;75mFILE\e[0m: $location"
    elif [ -x "$location" ]; then
        execs="$execs $location"
        echo -e "Found \e[91mEXECUTABLE\e[0m: $location"
    fi
done

counter=0
for count in $files; do
    counter=$((counter+1))
done
counter2=0
for count in $directories; do
    counter2=$((counter2+1))
done
counter3=0
for count in $execs; do
    counter3=$((counter3+1))
done
echo
echo "$counter files"
echo "$counter2 directories"
echo "$counter3 executables"