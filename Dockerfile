FROM osgeo/gdal:alpine-ultrasmall-latest

RUN mkdir -p /app
WORKDIR /app
COPY convert.sh /app/convert.sh

RUN chmod +x /app/convert.sh
ENTRYPOINT /app/convert.sh