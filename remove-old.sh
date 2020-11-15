#!/bin/bash

# Loops through all folders inside `$FOLDER`, then recursively removes folders
# older than the `$CUTOFF` unix timestamp. Modify these variables to suit your
# needs, then install this script as a crontab on your system

FOLDER="your-path-to-camera-files"
CUTOFF=$(date -d '10 days ago' +%s)

cd $FOLDER

for FILE in *; do
  if [ -d $"$FILE" ]; then
    AGE=$(date -d $FILE +%s)
    if (($AGE < $CUTOFF)); then
      rm -rf $FILE
    fi
  fi
done

