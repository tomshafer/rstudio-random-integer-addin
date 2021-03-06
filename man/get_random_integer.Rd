% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random-integers.R
\name{get_random_integer}
\alias{get_random_integer}
\title{Query random.org for a random integer}
\usage{
get_random_integer(maxval = 1e+08, minval = 0, seed = NULL)
}
\arguments{
\item{maxval}{Maximum random integer}

\item{minval}{Minimum random integer}

\item{seed}{Random seed for testing the generator, should not be used}
}
\value{
A sampled integer
}
\description{
Query random.org for a random integer
}
\examples{
get_random_integer()
}
