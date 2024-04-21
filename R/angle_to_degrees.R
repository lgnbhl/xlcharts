#' @title angle_to_degrees
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' angle_to_degrees(value = 1000L)
#' }
#'
#' @export
angle_to_degrees <- function(value, ...) {

  py_obj <- openpyxl$utils$units$angle_to_degrees(
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
