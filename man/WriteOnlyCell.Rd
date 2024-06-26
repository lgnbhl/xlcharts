% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WriteOnlyCell.R
\name{WriteOnlyCell}
\alias{WriteOnlyCell}
\title{WriteOnlyCell}
\usage{
WriteOnlyCell(ws = NULL, value = NULL, ...)
}
\arguments{
\item{ws}{ws}

\item{value}{value}

\item{...}{Additional arguments, i.e. kwargs.}
}
\value{
An openpyxl Python object.
}
\description{
\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.cell.html}
}
\examples{
\dontrun{
wb <- Workbook()
WriteOnlyCell(ws = wb$active)
}

}
