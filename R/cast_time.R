#' @title cast_time
#'
#' @description Explicitly convert a string to a number and format as datetime or
#' time
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.inference.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An Python "datetime.time" object.
#'
#' @examples
#' \dontrun{
#' cast_time(value = "00:00:01")
#' }
#'
#' @export
cast_time <- function(value, ...) {

  py_obj <- openpyxl$utils$inference$cast_time(
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
