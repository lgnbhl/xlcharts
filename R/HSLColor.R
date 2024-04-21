#' @title HSLColor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.colors.html}
#'
#' @param hue hue
#' @param sat sat
#' @param lum lum
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' HSLColor(hue = 1L, sat = 1L, lum = 1L)
#' }
#'
#' @export
HSLColor <- function(hue = NULL, sat = NULL, lum = NULL, ...) {

  py_obj <- openpyxl$drawing$colors$HSLColor(
    hue = hue,
    sat = sat,
    lum = lum
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
