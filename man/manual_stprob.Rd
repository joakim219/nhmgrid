% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stprob.R
\name{manual_stprob}
\alias{manual_stprob}
\title{Manual creation of a \code{stprob} object}
\usage{
manual_stprob(prob)
}
\arguments{
\item{prob}{[\verb{data.table or data.frame}]\cr
A data table/frame containing the state transition probabilities.
See 'Details'.}
}
\description{
Create a \code{stprob} object manually. This is useful if the model used to estimate
the transition probabilities is not supported by this package.
}
\details{
The argument passed to this function must be a \link{data.frame} with a specific
structure. The table must contain the transition probabilities \code{mean} between
factored states \code{from} and \code{to} at every time point \code{x}. If the transition
probabilities are grouped, the group indicator must be defined in \code{group}.
The lower and upper bounds of confidence/credibility intervals are to be set
in \code{lower} and \code{upper}. The columns marked with a star may be omitted.

Below is an example of the structure of the table. The values are from the
\link{health} dataset.\tabular{lllllll}{
   x \tab from \tab to \tab group* \tab mean \tab lower* \tab upper* \cr
   4 \tab healthy \tab healthy \tab male \tab 0.86 \tab 0.79 \tab 0.92 \cr
   4 \tab healthy \tab healthy \tab female \tab 0.89 \tab 0.84 \tab 0.95 \cr
   4 \tab healthy \tab sick \tab male \tab 0.14 \tab 0.07 \tab 0.20 \cr
   4 \tab healthy \tab sick \tab female \tab 0.11 \tab 0.05 \tab 0.16 \cr
   4 \tab healthy \tab deceased \tab male \tab 0.00 \tab 0.00 \tab 0.01 \cr
   4 \tab healthy \tab deceased \tab female \tab 0.00 \tab 0.00 \tab 0.00 \cr
   4 \tab sick \tab healthy \tab male \tab 0.84 \tab 0.74 \tab 0.93 \cr
   ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \cr
   5 \tab healthy \tab healthy \tab male \tab 0.85 \tab 0.78 \tab 0.92 \cr
   ... \tab ... \tab ... \tab ... \tab ... \tab ... \tab ... \cr
}
}
