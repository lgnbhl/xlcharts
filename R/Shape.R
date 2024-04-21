#' @title Shape
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.connector.html}
#'
#' @param macro macro
#' @param textlink textlink
#' @param fPublished fPublished
#' @param fLocksText fLocksText
#' @param nvSpPr nvSpPr
#' @param spPr spPr
#' @param style style
#' @param txBody txBody
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Shape(spPr = GraphicalProperties())
#' }
#' @export
Shape <- function(macro = NULL, textlink = NULL, fPublished = NULL, fLocksText = NULL, nvSpPr = NULL, spPr = NULL, style = NULL, txBody = NULL, ...) {

  py_obj <- openpyxl$drawing$connector$Shape(
    macro = macro,
    textlink = textlink,
    fPublished = fPublished,
    fLocksText = fLocksText,
    nvSpPr = nvSpPr,
    spPr = spPr,
    style = style,
    txBody = txBody
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
