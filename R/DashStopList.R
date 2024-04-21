#' @title DashStopList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.line.html}
#'
#' @param ds ds
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DashStopList()
#' }
#'
#' @export
DashStopList <- function(ds = list(), ...) {

  py_obj <- openpyxl$drawing$line$DashStopList(
    ds = ds
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
