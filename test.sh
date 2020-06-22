#!/bin/sh

echo "++++ test.sh ++++"

cd /data

# Process files in /data
for f in *.zip; do
    unzip -n $f
done

sh /app/convert.sh