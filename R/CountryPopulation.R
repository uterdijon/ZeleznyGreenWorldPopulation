#' CountryPopulation
#' This function takes a country name as the argument and returns a graph
#' showing the country's population by year
#' @param country_name A string
#' @return A graph displaying the country's population  by year
#' @examples
#' CountryPopulation('China')
#' CountryPopulation('France')
#' @export
CountryPopulation <- function(country_name) {
  load(file='data/WorldPopulation.rda')
  World_Pop_Graph <- filter(WorldPopulation, WorldPopulation$Country == country_name)
  str(World_Pop_Graph)

  World_Pop_Graph2 <- tidyr::pivot_longer(as.data.frame(World_Pop_Graph),
      2:72,
      names_to = 'Year',
      values_to = 'Population')
  World_Pop_Graph3 <- dplyr::mutate(World_Pop_Graph2, Population= as.numeric(Population))
  World_Pop_Graph4 <- ggplot2::ggplot(World_Pop_Graph3, ggplot2::aes(x=Year, y=Population)) +
    ggplot2::geom_point() +
    ggplot2::labs( title= paste('Population of', country_name, 'by year') ) +
    ggplot2::labs( x="Year", y="Population in thousands" )
  return(World_Pop_Graph4)
}
CountryPopulation('Germany')
