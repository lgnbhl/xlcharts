#' @title Scaling
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param logBase logBase
#' @param orientation orientation
#' @param max max
#' @param min min
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Scaling()
#' }
#'
#' @export
Scaling <- function(logBase = NULL, orientation = "minMax", max = NULL, min = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$Scaling(
    logBase = logBase,
    orientation = orientation,
    max = max,
    min = min,
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
