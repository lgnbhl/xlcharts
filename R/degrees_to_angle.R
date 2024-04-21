#' @title degrees_to_angle
#'
#' @description 1 degree = 60000 angles
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' degrees_to_angle(value = 1)
#' }
#'
#' @export
degrees_to_angle <- function(value, ...) {

  py_obj <- openpyxl$utils$units$degrees_to_angle(
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
