% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WorldPopulation.R
\docType{data}
\name{WorldPopulation}
\alias{WorldPopulation}
\title{WorldPopulation}
\format{
A data frame with 235 observations and 72 columns.
\describe{
   \item{Country}{Name of country, as a string}
   \item{1950}{Population for 1950}
   \item{1951}{Population for 1951}
   ...
}
}
\usage{
WorldPopulation
}
\description{
This script reads the raw data from WorldPopulation excel file,
filters only the rows that are countries and the columns for the country name
and the year. Then it saves it as an rda file in the data directory.
}
\keyword{datasets}
