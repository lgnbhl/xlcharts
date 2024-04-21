#' @title SpreadsheetDrawing
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param twoCellAnchor twoCellAnchor
#' @param oneCellAnchor oneCellAnchor
#' @param absoluteAnchor absoluteAnchor
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SpreadsheetDrawing()
#' }
#'
#' @export
SpreadsheetDrawing <- function(twoCellAnchor = list(), oneCellAnchor = list(), absoluteAnchor = list(), ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$SpreadsheetDrawing(
    twoCellAnchor = twoCellAnchor,
    oneCellAnchor = oneCellAnchor,
    absoluteAnchor = absoluteAnchor
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
