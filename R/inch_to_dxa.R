#' @title inch_to_dxa
#'
#' @description 1 inch = 72 * 20 dxa
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
#' inch_to_dxa(value = 1)
#' }
#' @export
inch_to_dxa <- function(value, ...) {

  py_obj <- openpyxl$utils$units$inch_to_dxa(
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
