FROM osgeo/gdal:alpine-ultrasmall-latest

RUN mkdir -p /app
WORKDIR /geo-converter
COPY convert.sh /app/convert.sh

RUN chmod +x /app/convert.sh
ENTRYPOINT /app/convert.sh