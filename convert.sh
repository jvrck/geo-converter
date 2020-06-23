#!/bin/sh
echo "++++ convert.sh ++++"

cd /data
mkdir -p output

convert_file () {
    # extract the name of the file without the shp extension
    name=$(echo "$1" | cut -f 1 -d '.')

    echo "++++++ Converting ${f} ++++++"
    echo "++++++ Creating /data/output/${name}.geojson ++++++"
    ogr2ogr -f GeoJSON /data/output/${name}.geojson $f
    echo "++++++ Creating /data/output/${name}.gpkg ++++++"
    ogr2ogr -f gpkg /data/output/${name}.gpkg $f
}

# Process directories in /data
for d in */ ; do
    if [ "$d" != "output/" ]; then 
        cd $d
        for f in *.shp; do
            convert_file $f
        done
        cd ..
    fi
done

# Process files in /data
for f in *.shp; do
    convert_file $f
done