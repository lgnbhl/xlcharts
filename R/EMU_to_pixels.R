#' @title EMU_to_pixels
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
#' EMU_to_pixels(value = 10000L)
#' }
#'
#' @export
EMU_to_pixels <- function(value, ...) {

  py_obj <- openpyxl$utils$units$EMU_to_pixels(
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
