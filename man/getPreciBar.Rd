% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/getPreciBar.R
\name{getPreciBar}
\alias{getPreciBar}
\title{get mean rainfall bar plot of the input dataset}
\usage{
getPreciBar(dataset, method, cell = "mean", output = "data",
  plotRange = TRUE, member = NULL, ...)
}
\arguments{
\item{dataset}{A list containing different information, should be the result of reading netcdf file using
\code{library(ecomsUDG.Raccess)}, e.g., \code{loadGridData{ecomsUDG.Raccess}}}

\item{method}{A string showing the calculating method of the input time series. More information
please refer to the details.}

\item{cell}{A vector containing the locaton of the cell, e.g. c(2, 3), default is "mean", representing
the spatially averaged value. Check details for more information.}

\item{output}{A string showing the type of the output, if \code{output = 'ggplot'}, the returned
data can be used in ggplot and \code{getPreciBar_comb()}; if \code{output = 'plot'}, the returned data is the plot containing all
layers' information, and can be plot directly or used in grid.arrange; if not set, the data
will be returned.}

\item{plotRange}{A boolean showing whether the range will be plotted.}

\item{member}{A number showing which member is selected to get, if the dataset has a "member" dimension. Default
is NULL, if no member assigned, and there is a "member" in dimensions, the mean value of the members will be
taken.}

\item{...}{\code{title, x, y} showing the title and x and y axis of the plot. e.g. \code{title = 'aaa'}}
}
\value{
The calculated mean value of the input time series and the plot of the result.
}
\description{
get mean rainfall bar plot of the input dataset
}
\details{
There are following methods to be selected,
"annual": annual rainfall of each year is plotted.
"winter", "spring", "autumn", "summer": seasonal rainfall of each year is plotted.
Month(number 1 to 12): month rainfall of each year is plotted, e.g. march rainfall of each year.
"meanMonthly": the mean monthly rainfall of each month over the whole period.

#Since "winter" is a crossing year, 12, 1, 2, 12 is in former year, and 1, 2 are in latter year.
#so winter belongs to the latter year.


\code{cell} representing the location of the cell, NOTE: this location means the index of the cell,
IT IS NOT THE LONGITUDE AND LATITUDE. e.g., \code{cell = c(2, 3)}, the program will take the 2nd longitude
and 3rd latitude, by the increasing order. Longitude comes first.
}
\examples{
#gridData provided by package is the result of \\code{loadGridData{ecomsUDG.Raccess}}
data(tgridData)
b1 <- getPreciBar(tgridData, method = 'annual')
b2 <- getPreciBar(tgridData, method = 'meanMonthly')
}

