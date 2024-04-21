#' @title short_color
#'
#' @description format a color to its short size
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param color color
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' short_color(color = "color")
#' }
#'
#' @export
short_color <- function(color, ...) {

  py_obj <- openpyxl$utils$units$short_color(
    color = color
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
