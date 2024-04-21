#' @title Color
#'
#' @description Named colors for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.colors.html}
#'
#' @param rgb rgb
#' @param indexed indexed
#' @param auto auto
#' @param theme theme
#' @param tint tint
#' @param index index
#' @param type type
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Color()
#' }
#'
#' @export
Color <- function(rgb = "00000000", indexed = NULL, auto = NULL, theme = NULL, tint = 0.0, index = NULL, type = "rgb", ...) {

  py_obj <- openpyxl$styles$colors$Color(
    rgb = rgb,
    indexed = indexed,
    auto = auto,
    theme = theme,
    tint = tint,
    index = index,
    type = type
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
