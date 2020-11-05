FROM rocker/geospatial:4.0.3

MAINTAINER "Nicolas Casajus" nicolas.casajus@fondationbiodiversite.fr

ENV FOLDER="/home/rstudio"

COPY . "$FOLDER"

RUN  R -e "remotes::install_deps(pkgdir = \"${FOLDER}\", upgrade = \"never\")" \
  && R -e "rmarkdown::render(\"${FOLDER}/report/report.Rmd\", clean = TRUE)" \

WORKDIR "$FOLDER"
