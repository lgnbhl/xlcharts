#' @title Side
#'
#' @description Border options for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.borders.html}
#'
#' @details Caution: if you do not specify a border_style, other attributes will
#' have no effect !
#'
#' @param style style
#' @param color color
#' @param border_style border_style
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @section Caution: if you do not specify a border_style, other attributes will:
#' have no effect !
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Side()
#' }
#'
#' @export
Side <- function(style = NULL, color = NULL, border_style = NULL, ...) {

  py_obj <- openpyxl$styles$borders$Side(
    style = style,
    color = color,
    border_style = border_style
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
