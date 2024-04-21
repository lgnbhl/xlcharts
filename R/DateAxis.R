#' @title DateAxis
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param auto auto
#' @param lblOffset lblOffset
#' @param baseTimeUnit baseTimeUnit
#' @param majorUnit majorUnit
#' @param majorTimeUnit majorTimeUnit
#' @param minorUnit minorUnit
#' @param minorTimeUnit minorTimeUnit
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DateAxis()
#' }
#'
#' @export
DateAxis <- function(auto = NULL, lblOffset = NULL, baseTimeUnit = NULL, majorUnit = NULL, majorTimeUnit = NULL, minorUnit = NULL, minorTimeUnit = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$DateAxis(
    auto = auto,
    lblOffset = lblOffset,
    baseTimeUnit = baseTimeUnit,
    majorUnit = majorUnit,
    majorTimeUnit = majorTimeUnit,
    minorUnit = minorUnit,
    minorTimeUnit = minorTimeUnit,
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
