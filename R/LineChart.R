#' @title LineChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.line_chart.html}
#'
#' @param hiLowLines hiLowLines
#' @param upDownBars upDownBars
#' @param marker marker
#' @param smooth smooth
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LineChart()
#' }
#' @export
LineChart <- function(hiLowLines = NULL, upDownBars = NULL, marker = NULL, smooth = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$LineChart(
    hiLowLines = hiLowLines,
    upDownBars = upDownBars,
    marker = marker,
    smooth = smooth,
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
