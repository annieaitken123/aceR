% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load-ace-bulk.R
\name{load_ace_bulk}
\alias{load_ace_bulk}
\title{Read & Load all ACE csv & xls files in a directory}
\usage{
load_ace_bulk(path = ".", verbose = TRUE, recursive = TRUE,
  exclude = c(), pattern = NULL)
}
\arguments{
\item{path}{a character vector of full path names; the default
    corresponds to the working directory, \code{\link{getwd}()}.  Tilde
    expansion (see \code{\link{path.expand}}) is performed.  Missing
    values will be ignored.}

\item{verbose}{logical. Print details? Defaults to \code{TRUE}}

\item{recursive}{logical.  Should the listing recurse into directories?}

\item{exclude}{a list of patterns to exclude}

\item{pattern}{an optional \link{regular expression}.  Only file names
    which match the regular expression will be returned.}
}
\value{
Returns a data.frame containing the content of every file in the
 specified \code{path}.
}
\description{
Wrapper function around \code{\link{load_ace_file}()} to read & parse 
 all ACE csv files in a directory.
}

