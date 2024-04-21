#' @title Stylesheet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.stylesheet.html}
#'
#' @param numFmts numFmts
#' @param fonts fonts
#' @param fills fills
#' @param borders borders
#' @param cellStyleXfs cellStyleXfs
#' @param cellXfs cellXfs
#' @param cellStyles cellStyles
#' @param dxfs dxfs
#' @param tableStyles tableStyles
#' @param colors colors
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Stylesheet()
#' }
#'
#' @export
Stylesheet <- function(numFmts = NULL, fonts = list(), fills = list(), borders = list(), cellStyleXfs = NULL, cellXfs = NULL, cellStyles = NULL, dxfs = list(), tableStyles = NULL, colors = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$styles$stylesheet$Stylesheet(
    numFmts = numFmts,
    fonts = fonts,
    fills = fills,
    borders = borders,
    cellStyleXfs = cellStyleXfs,
    cellXfs = cellXfs,
    cellStyles = cellStyles,
    dxfs = dxfs,
    tableStyles = tableStyles,
    colors = colors,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
