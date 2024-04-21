#' @title AnchorMarker
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param col col
#' @param colOff colOff
#' @param row row
#' @param rowOff rowOff
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AnchorMarker()
#' }
#'
#' @export
AnchorMarker <- function(col = 0L, colOff = 0L, row = 0L, rowOff = 0L, ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$AnchorMarker(
    col = as.integer(col),
    colOff = as.integer(colOff),
    row = as.integer(row),
    rowOff = as.integer(rowOff)
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
