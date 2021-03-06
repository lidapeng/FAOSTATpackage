% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/FAOcheck.R
\name{FAOcheck}
\alias{FAOcheck}
\title{This function perform some check on the data}
\usage{
FAOcheck(var, year = "Year", data, type = c("overlap", "multiChina"),
  take = c("simpleCheck", "takeNew", "takeOld", "complete"))
}
\arguments{
\item{var}{The variable to be checked.}

\item{year}{The column which index the time.}

\item{data}{The data frame.}

\item{type}{The type of check.}

\item{take}{The type of check/replacement to be done in case of
type equals to overlap.}
}
\description{
The function only works for FAOST_CODE. If the country coding
system is not in FAOST_CODE then use the translateCountryCode
function to translate it.
}
\examples{
## test.df =
##    data.frame(FAOST_CODE = rep(c(51,167,199), each = 3),
##      Year = rep(c(1990:1992), 3),
##      Value = c(c(3,4,4), c(2,2,2), c(1,2,NA)))
## FAOcheck(var = "Value", data = test.df, type = "overlap", take = "simpleCheck")
## FAOcheck(var = "Value", data = test.df, type = "overlap", take = "takeNew")
## FAOcheck(var = "Value", data = test.df, type = "overlap", take = "takeOld")
## FAOcheck(var = "Value", data = test.df, type = "overlap", take = "complete")
}

