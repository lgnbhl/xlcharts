#' @title CellRange
#'
#' @description Represents a range in a sheet: title and coordinates.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.cell_range.html}
#'
#' @details This object is used to perform operations on ranges, like: - shift, expand or shrink
#' - union/intersection with another sheet range, We can check whether a range is: - equal or not equal to another,
#' - disjoint of another,
#' - contained in another. We can get: - the size of a range.
#' - the range bounds (vertices)
#' - the coordinates,
#' - the string representation,
#'
#' @param range_string range_string
#' @param min_col min_col
#' @param min_row min_row
#' @param max_col max_col
#' @param max_row max_row
#' @param title title
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellRange(range_string = "A1")
#' }
#'
#' @export
CellRange <- function(range_string = NULL, min_col = NULL, min_row = NULL, max_col = NULL, max_row = NULL, title = NULL, ...) {

  py_obj <- openpyxl$worksheet$cell_range$CellRange(
    range_string = range_string,
    min_col = min_col,
    min_row = min_row,
    max_col = max_col,
    max_row = max_row,
    title = title
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
