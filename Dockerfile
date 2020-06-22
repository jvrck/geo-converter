FROM osgeo/gdal:alpine-ultrasmall-latest

RUN mkdir -p /app
WORKDIR /app
COPY *.sh /app/

RUN chmod +x /app/convert.sh
RUN chmod +x /app/test.sh
ENTRYPOINT /app/convert.sh