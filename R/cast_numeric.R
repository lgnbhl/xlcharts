#' @title cast_numeric
#'
#' @description Explicitly convert a string to a numeric value
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.inference.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An numeric value.
#'
#' @examples
#' \dontrun{
#' cast_numeric(value = "1")
#' }
#'
#' @export
cast_numeric <- function(value, ...) {

  py_obj <- openpyxl$utils$inference$cast_numeric(
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
