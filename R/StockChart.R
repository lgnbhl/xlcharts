#' @title StockChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.stock_chart.html}
#'
#' @param ser ser
#' @param dLbls dLbls
#' @param dropLines dropLines
#' @param hiLowLines hiLowLines
#' @param upDownBars upDownBars
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' StockChart()
#' }
#'
#' @export
StockChart <- function(ser = list(), dLbls = NULL, dropLines = NULL, hiLowLines = NULL, upDownBars = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$StockChart(
    ser = ser,
    dLbls = dLbls,
    dropLines = dropLines,
    hiLowLines = hiLowLines,
    upDownBars = upDownBars,
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
