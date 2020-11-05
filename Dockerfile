FROM rocker/geospatial:4.0.3

MAINTAINER "Nicolas Casajus" nicolas.casajus@fondationbiodiversite.fr

ENV FOLDER="/home/rstudio"

COPY . "$FOLDER"

RUN  cd "$FOLDER" \
  && Rscript make.R

WORKDIR "$FOLDER"
