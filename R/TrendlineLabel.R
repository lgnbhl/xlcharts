#' @title TrendlineLabel
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.trendline.html}
#'
#' @param layout layout
#' @param tx tx
#' @param numFmt numFmt
#' @param spPr spPr
#' @param txPr txPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TrendlineLabel()
#' }
#'
#' @export
TrendlineLabel <- function(layout = NULL, tx = NULL, numFmt = NULL, spPr = NULL, txPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$trendline$TrendlineLabel(
    layout = layout,
    tx = tx,
    numFmt = numFmt,
    spPr = spPr,
    txPr = txPr,
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
