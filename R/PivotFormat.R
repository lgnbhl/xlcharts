#' @title PivotFormat
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pivot.html}
#'
#' @param idx idx
#' @param spPr spPr
#' @param txPr txPr
#' @param marker marker
#' @param dLbl dLbl
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PivotFormat()
#' }
#'
#' @export
PivotFormat <- function(idx = 0L, spPr = NULL, txPr = NULL, marker = NULL, dLbl = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$pivot$PivotFormat(
    idx = as.integer(idx),
    spPr = spPr,
    txPr = txPr,
    marker = marker,
    dLbl = dLbl,
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
