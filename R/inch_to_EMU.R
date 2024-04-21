#' @title inch_to_EMU
#'
#' @description 1 inch = 914400 EMUs
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An numeric value.
#'
#' @examples
#' \dontrun{
#' inch_to_EMU(value = 1)
#' }
#' @export
inch_to_EMU <- function(value, ...) {

  py_obj <- openpyxl$utils$units$inch_to_EMU(
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
