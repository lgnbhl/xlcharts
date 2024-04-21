#' @title PivotSource
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pivot.html}
#'
#' @param name name
#' @param fmtId fmtId
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PivotSource(fmtId = 1L)
#' }
#'
#' @export
PivotSource <- function(name = NULL, fmtId = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$pivot$PivotSource(
    name = name,
    fmtId = fmtId,
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
