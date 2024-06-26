% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Reference.R
\name{Reference}
\alias{Reference}
\title{Reference}
\usage{
Reference(
  worksheet = NULL,
  min_col = NULL,
  min_row = NULL,
  max_col = NULL,
  max_row = NULL,
  range_string = NULL,
  ...
)
}
\arguments{
\item{worksheet}{worksheet}

\item{min_col}{min_col}

\item{min_row}{min_row}

\item{max_col}{max_col}

\item{max_row}{max_row}

\item{range_string}{range_string}

\item{...}{Additional arguments, i.e. kwargs.}
}
\value{
An openpyxl Python object.
}
\description{
Normalise cell range references

\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.reference.html}
}
\examples{
\dontrun{
wb <- Workbook()
Reference(worksheet = wb$active, min_col = 1L, min_row = 1L, max_col = 1L, max_row = 1L)
}

}
