# sfrocker

This research compendium shows a simple example of running an R spatial analysis into a Docker container (rocker/geospatial:4.0.3 image). User must have installed the Docker software available at: [**Get Docker**](https://docs.docker.com/get-docker/)

## Usage

First clone this repository. Then on a terminal (make sure the :whale: service is running), build the :whale: image from the Dockerfile. This will knit the `report/report.Rmd` in a HTML document.

```sh
docker build -t nicolascasajus/sfrocker:1.0 .
```

Then, start a :whale: container with:

```sh
docker run --rm -p 127.0.0.1:8787:8787 -e DISABLE_AUTH=true nicolascasajus/sfrocker:1.0
```

Finally, on a web browser visit the URL `127.0.0.1:8787` (this will start a RStudio Server) and open the `report/report.html` to see result.

:tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada:
:tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada: :tada:
