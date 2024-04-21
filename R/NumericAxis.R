#' @title NumericAxis
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param crossBetween crossBetween
#' @param majorUnit majorUnit
#' @param minorUnit minorUnit
#' @param dispUnits dispUnits
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumericAxis()
#' }
#'
#' @export
NumericAxis <- function(crossBetween = NULL, majorUnit = NULL, minorUnit = NULL, dispUnits = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$NumericAxis(
    crossBetween = crossBetween,
    majorUnit = majorUnit,
    minorUnit = minorUnit,
    dispUnits = dispUnits,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
