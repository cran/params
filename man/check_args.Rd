% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_args.R
\name{check_args}
\alias{check_args}
\title{Assert none of the arguments of a function are null.}
\usage{
check_args(ignore, select)
}
\arguments{
\item{ignore}{optionally ignore a few variables for checking [character vector].}

\item{select}{optionally only check a few variables of the function [character vector].}
}
\description{
Checks all the arguments in the parent function and makes sure that none of them
are NULL
}
\examples{

myfunc <- function(verbose = get_opts("verbose"), b = get_opts("b")){
  check_args()
}

set_opts(verbose = 1)
## this will throw an error, suggesting b is not defined properly
try(myfunc())


}
