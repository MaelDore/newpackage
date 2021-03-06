% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ma_function.R
\name{ma_function}
\alias{ma_function}
\title{Ma super fonction = Arithmetic mean}
\usage{
ma_function(x, na_rm = FALSE)
}
\arguments{
\item{x}{a numerical vector (can contain 'NA' values).}

\item{na_rm}{a logical value indicating whether 'NA' values should be
stripped before the computation proceeds.}
}
\value{
The arithmetic mean of the values as a numeric vector of length one.
}
\description{
This function computes the arithmetic mean of a numerical vector.
}
\details{
An error will be returned if 'x' contains 'NA' values and 'na_rm' is
set to 'FALSE' or if 'x' contains less than two values (after removing 'NA').
}
\examples{
ma_function(1:10)
\dontrun {
ma_function(c(1:10, NA)) # Error
}
}
