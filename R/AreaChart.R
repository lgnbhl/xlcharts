#' @title AreaChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.area_chart.html}
#'
#' @param axId axId
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AreaChart()
#' }
#'
#' @export
AreaChart <- function(axId = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$AreaChart(
    axId = axId,
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
