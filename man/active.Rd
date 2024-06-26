% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/active.R
\name{active}
\alias{active}
\title{active}
\usage{
active(py_obj)
}
\arguments{
\item{py_obj}{py_obj}
}
\value{
An openpyxl Python object.
}
\description{
Get the currently active sheet or NULL.

\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.workbook.html#openpyxl.workbook.workbook.Workbook.active}
}
\details{
:type: :class:`openpyxl.worksheet.worksheet.Worksheet`
}
\examples{
\dontrun{
wb <- Workbook()
wb |> active() #equivalent to wb$active
}

}
