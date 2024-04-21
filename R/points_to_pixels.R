#' @title points_to_pixels
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param dpi dpi
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' points_to_pixels(value = 1L)
#' }
#'
#' @export
points_to_pixels <- function(value, dpi = 96L, ...) {

  py_obj <- openpyxl$utils$units$points_to_pixels(
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
