% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/analyzeTS.R
\name{getMoment}
\alias{getMoment}
\title{get moment analysis of the input distribution}
\usage{
getMoment(dis)
}
\arguments{
\item{dis}{A distribution, for hydrology usually a time series with only data column without time.}
}
\value{
The mean, variation, skewness and kurtosis of the input distribution
}
\description{
get moment analysis of the input distribution
}
\examples{
dis <- seq(1, 100)
getMoment(dis)
}

