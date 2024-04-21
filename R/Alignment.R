#' @title Alignment
#'
#' @description Alignment options for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.alignment.html}
#'
#' @param horizontal horizontal
#' @param vertical vertical
#' @param textRotation textRotation
#' @param wrapText wrapText
#' @param shrinkToFit shrinkToFit
#' @param indent indent
#' @param relativeIndent relativeIndent
#' @param justifyLastLine justifyLastLine
#' @param readingOrder readingOrder
#' @param text_rotation text_rotation
#' @param wrap_text wrap_text
#' @param shrink_to_fit shrink_to_fit
#' @param mergeCell mergeCell
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Alignment()
#' }
#'
#' @export
Alignment <- function(horizontal = NULL, vertical = NULL, textRotation = 0L, wrapText = NULL, shrinkToFit = NULL, indent = 0L, relativeIndent = 0L, justifyLastLine = NULL, readingOrder = 0L, text_rotation = NULL, wrap_text = NULL, shrink_to_fit = NULL, mergeCell = NULL, ...) {

  py_obj <- openpyxl$workbook$workbook$Alignment(
    horizontal = horizontal,
    vertical = vertical,
    textRotation = as.integer(textRotation),
    wrapText = wrapText,
    shrinkToFit = shrinkToFit,
    indent = as.integer(indent),
    relativeIndent = as.integer(relativeIndent),
    justifyLastLine = justifyLastLine,
    readingOrder = as.integer(readingOrder),
    text_rotation = text_rotation,
    wrap_text = wrap_text,
    shrink_to_fit = shrink_to_fit,
    mergeCell = mergeCell
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
