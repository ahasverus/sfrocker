#' @title Map one Region of France
#' @description This function maps a region of France selected by user with the
#' argument `region`.
#'
#' @param dsn the path of the folder containing the shapefile to map.
#' @param layer the shapefile to map (without extension).
#' @param region the region of France to map.
#'
#' @export
#'
#' @import ggplot2
#' @importFrom sf st_read st_centroid
#' @importFrom dplyr filter
#'
#' @examples
#' \dontrun{
#' mapper(dsn = here::here("data"), layer = "gadm36_FRA_2", region = "Corse")
#' }

mapper <- function(dsn, layer, region) {

  shape <- sf::st_read(dsn = dsn, layer = layer) %>%
    dplyr::filter(NAME_1 == region)

  ggplot(data = shape) +

  geom_sf(
    fill = "#49847B",
    colour = "white"
  ) +

  geom_sf(data = sf::st_centroid(shape), colour = "#3f3f3f") +

  ggtitle(region) +

  theme_bw()
}
