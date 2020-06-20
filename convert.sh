echo "++++ convert.sh ++++"

cd /data
mkdir -p output

for f in *.shp; do
    # extract the name of the file without the shp extension
    name=$(echo "$f" | cut -f 1 -d '.')

    echo "++++++ Converting ${f} ++++++"
    ogr2ogr -f GeoJSON output/${name}.geojson $f
    ogr2ogr -f gpkg output/${name}.gpkg $f
done
