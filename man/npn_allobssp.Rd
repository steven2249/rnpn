% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/npn_allobssp.R
\name{npn_allobssp}
\alias{npn_allobssp}
\title{Get all observations for a particular species or set of species}
\usage{
npn_allobssp(speciesid, startdate = NULL, enddate = NULL, ...)
}
\arguments{
\item{speciesid}{species id numbers, from 1 to infinity, potentially,
use e.g., c(52, 53, etc.) if more than one species desired (numeric)}

\item{startdate}{start date of data period desired, see format in examples (character)}

\item{enddate}{end date of data period desired, see format in examples (character)}

\item{...}{Curl options passed on to \code{\link[httr]{GET}}}
}
\value{
A list with slots for taxa, stations, phenophase (metadata) and data
}
\description{
Get all observations for a particular species or set of species
}
\examples{
\dontrun{
# Lookup names
lookup_names(name='Pinus', type='genus')

# Get data on one species
npn_allobssp(speciesid = 52, startdate='2008-01-01', enddate='2011-12-31')

# Get data on two species
npn_allobssp(speciesid = c(52, 53), startdate='2008-01-01', enddate='2011-12-31')

# Get data on one species, convert to a single data.frame
npn_allobssp(speciesid = 52, startdate='2008-01-01', enddate='2011-12-31')
}
}

