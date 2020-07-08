# shape2Open

Convert ESRI shape files to open formats GeoJSON and GPKG 

This docker image converts shape files to GeoJSON and Geo Package open formats.

The image expects a `/data` volume that contains shapefiels or directories that contin shape files. All generated files will the created in the `/output` directory in the `/data` volume.

### Usage
```
docker run -it -v $PWD/sample-data/:/data jvrck/shape2open:latest 
```