#' @title DataTable
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.plotarea.html}
#'
#' @param showHorzBorder showHorzBorder
#' @param showVertBorder showVertBorder
#' @param showOutline showOutline
#' @param showKeys showKeys
#' @param spPr spPr
#' @param txPr txPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataTable()
#' }
#'
#' @export
DataTable <- function(showHorzBorder = NULL, showVertBorder = NULL, showOutline = NULL, showKeys = NULL, spPr = NULL, txPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$plotarea$DataTable(
    showHorzBorder = showHorzBorder,
    showVertBorder = showVertBorder,
    showOutline = showOutline,
    showKeys = showKeys,
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
