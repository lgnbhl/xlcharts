% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SheetProtection.R
\name{SheetProtection}
\alias{SheetProtection}
\title{SheetProtection}
\usage{
SheetProtection(
  sheet = FALSE,
  objects = FALSE,
  scenarios = FALSE,
  formatCells = TRUE,
  formatRows = TRUE,
  formatColumns = TRUE,
  insertColumns = TRUE,
  insertRows = TRUE,
  insertHyperlinks = TRUE,
  deleteColumns = TRUE,
  deleteRows = TRUE,
  selectLockedCells = FALSE,
  selectUnlockedCells = FALSE,
  sort = TRUE,
  autoFilter = TRUE,
  pivotTables = TRUE,
  password = NULL,
  algorithmName = NULL,
  saltValue = NULL,
  spinCount = NULL,
  hashValue = NULL,
  ...
)
}
\arguments{
\item{sheet}{sheet}

\item{objects}{objects}

\item{scenarios}{scenarios}

\item{formatCells}{formatCells}

\item{formatRows}{formatRows}

\item{formatColumns}{formatColumns}

\item{insertColumns}{insertColumns}

\item{insertRows}{insertRows}

\item{insertHyperlinks}{insertHyperlinks}

\item{deleteColumns}{deleteColumns}

\item{deleteRows}{deleteRows}

\item{selectLockedCells}{selectLockedCells}

\item{selectUnlockedCells}{selectUnlockedCells}

\item{sort}{sort}

\item{autoFilter}{autoFilter}

\item{pivotTables}{pivotTables}

\item{password}{password}

\item{algorithmName}{algorithmName}

\item{saltValue}{saltValue}

\item{spinCount}{spinCount}

\item{hashValue}{hashValue}

\item{...}{Additional arguments, i.e. kwargs.}
}
\value{
An openpyxl Python object.
}
\description{
Information about protection of various aspects of a sheet. TRUE values

\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.protection.html}
}
\details{
mean that protection for the object or action is active This is the
**default** when protection is active, ie. users cannot do something
}
\examples{
\dontrun{
SheetProtection()
}

}
