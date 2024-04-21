#' @title ErrorBars
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.error_bar.html}
#'
#' @param errDir errDir
#' @param errBarType errBarType
#' @param errValType errValType
#' @param noEndCap noEndCap
#' @param plus plus
#' @param minus minus
#' @param val val
#' @param spPr spPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ErrorBars()
#' }
#'
#' @export
ErrorBars <- function(errDir = NULL, errBarType = "both", errValType = "fixedVal", noEndCap = NULL, plus = NULL, minus = NULL, val = NULL, spPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$error_bar$ErrorBars(
    errDir = errDir,
    errBarType = errBarType,
    errValType = errValType,
    noEndCap = noEndCap,
    plus = plus,
    minus = minus,
    val = val,
    spPr = spPr,
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
