#' @title pixels_to_points
#'
#' @description 96 dpi, 72i
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param dpi dpi
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' pixels_to_points(value = 1L)
#' }
#'
#' @export
pixels_to_points <- function(value, dpi = 96L, ...) {

  py_obj <- openpyxl$utils$units$pixels_to_points(
    value = value,
    dpi = as.integer(dpi)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
