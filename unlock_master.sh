#!/bin/bash
ids=( # Define the extension ID's
    "jfbecfmiegcjddenjhlbhlikcbfmnafd"
    "iheobagjkfklnlikgihanlhcddjoihkg"
    "joflmkccibkooplaeoinecjbmdebglab"
)
for id in "${ids[@]}"; do # Loop through each ID
    rm -rf "$HOME/Library/Application Support/Google/Chrome/Default/Local Extension Settings/${id}"
    rm -rf "$HOME/Library/Application Support/Google/Chrome/Default/Extensions/${id}" # Actually remove the 2 locations of the local ID
    if [ ! -d "$HOME/Library/Application Support/Google/Chrome/Default/Local Extension Settings/${id}" ] && [ ! -d "$HOME/Library/Application Support/Google/Chrome/Default/Extensions/${id}" ]; then
        echo "Folders for extension ID '${id}' successfully removed." # Check if they were removed
    else
        echo "Failed to remove folders for extension ID '${id}'."
    fi
done