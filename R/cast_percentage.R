#' @title cast_percentage
#'
#' @description Explicitly convert a string to numeric value and format as a
#' percentage
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
#' cast_percentage(value = "50%")
#' }
#'
#' @export
cast_percentage <- function(value, ...) {

  py_obj <- openpyxl$utils$inference$cast_percentage(
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
