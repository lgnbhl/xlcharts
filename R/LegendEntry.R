#' @title LegendEntry
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.legend.html}
#'
#' @param idx idx
#' @param delete delete
#' @param txPr txPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LegendEntry()
#' }
#' @export
LegendEntry <- function(idx = 0, delete = NULL, txPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$legend$LegendEntry(
    idx = as.integer(idx),
    delete = delete,
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
