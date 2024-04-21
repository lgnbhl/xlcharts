#' @title BarChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.bar_chart.html}
#'
#' @param gapWidth gapWidth
#' @param overlap overlap
#' @param serLines serLines
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BarChart()
#' }
#'
#' @export
BarChart <- function(
    gapWidth = 150L,
    overlap = NULL,
    serLines = NULL,
    extLst = NULL,
    ...) {

  py_obj <- openpyxl$chart$BarChart(
    gapWidth = as.integer(gapWidth),
    overlap = overlap,
    serLines = serLines,
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
