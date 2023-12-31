% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{towns}
\alias{towns}
\title{Populated places from naturalearth}
\usage{
towns(x, size = NULL, capital = FALSE, crs = NULL, shift = FALSE)
}
\arguments{
\item{x}{a \code{sf} (typically computed using the \code{countries}
function), or a character that is passed to \code{countries},}

\item{size}{the minimum size of the cities that have to be
retrieved (the default value is \code{NULL} and all the cities are
retrieved)}

\item{capital}{if \code{TRUE} always retrieve the capitals, even if
their size is below the one specified using the \code{size} argument}

\item{crs}{an optional \strong{crs} which is passed to \code{st_transform}}

\item{shift}{a boolean, if \code{TRUE}, \code{st_shift_longitude} is used}
}
\value{
a \code{sf} containing five columns:
\itemize{
\item \code{iso2}: the id of the  country,
\item \code{iso3}: the id of the  country,
\item \code{name}: the name of the city,
\item \code{capital}: a boolean, \code{TRUE} for a capital
\item \code{pop}: the population of the city,
\item \code{point}: a point \code{sfc} containing the coordinates of the city
}
}
\description{
Select a set of cities; the set can be defined using the id of the
country, the fact that it is a capital and the size
}
\examples{
we <- countries("Western Europe")
towns(we, size = 1E06, capital = TRUE)
}
