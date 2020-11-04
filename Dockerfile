FROM rocker/geospatial:4.0.3

MAINTAINER "Nicolas Casajus" nicolas.casajus@fondationbiodiversite.fr

ENV FOLDER="/home/rstudio"

COPY . "$FOLDER"

WORKDIR "$FOLDER"

RUN  Rscript -e "remotes::install_deps(pkgdir = \"/home/rstudio/\", upgrade = \"never\")"
  && Rscript -e "rmarkdown::render(\"report/report.Rmd\", clean = TRUE)"
