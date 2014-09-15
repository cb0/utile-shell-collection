#!/bin/bash

Program="emacs"

found=0
wmctrl -l | while read Window; do
    if [[ "$Window" == *"$Program"* ]]; then
        echo "DEBUG: I bring $Window"
        code=`echo "$Window" | cut -f 1 -d " "`
        wmctrl -i -a $code
	found=1
    fi
done

