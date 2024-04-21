#' @title dxa_to_cm
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' dxa_to_cm(value = 1L)
#' }
#'
#' @export
dxa_to_cm <- function(value, ...) {

  py_obj <- openpyxl$utils$units$dxa_to_cm(
    value = value
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
