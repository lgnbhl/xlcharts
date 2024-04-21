#' @title RowRange
#'
#' @description Represent a range of at least one row
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.print_settings.html}
#'
#' @param range_string range_string
#' @param min_row min_row
#' @param max_row max_row
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RowRange(min_row = 1L, max_row = 2L)
#' }
#'
#' @export
RowRange <- function(range_string = NULL, min_row = NULL, max_row = NULL, ...) {

  py_obj <- openpyxl$worksheet$print_settings$RowRange(
    range_string = range_string,
    min_row = min_row,
    max_row = max_row
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
