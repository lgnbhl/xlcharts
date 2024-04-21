#' @title ScatterChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.scatter_chart.html}
#'
#' @param scatterStyle scatterStyle
#' @param varyColors varyColors
#' @param ser ser
#' @param dLbls dLbls
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ScatterChart()
#' }
#'
#' @export
ScatterChart <- function(scatterStyle = NULL, varyColors = NULL, ser = list(), dLbls = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$ScatterChart(
    scatterStyle = scatterStyle,
    varyColors = varyColors,
    ser = ser,
    dLbls = dLbls,
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
