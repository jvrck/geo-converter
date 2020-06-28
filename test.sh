#!/bin/sh

echo "++++ test.sh ++++"

cd /data

# Process files in /data
# Unzip shape files
for f in *.zip; do
    unzip -n $f
done

# Execute conversion script
sh /app/convert.sh
