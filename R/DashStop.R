#' @title DashStop
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.line.html}
#'
#' @param d d
#' @param sp sp
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DashStop()
#' }
#'
#' @export
DashStop <- function(d = 0L, sp = 0L, ...) {

  py_obj <- openpyxl$drawing$line$DashStop(
    d = as.integer(d),
    sp = as.integer(sp)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
