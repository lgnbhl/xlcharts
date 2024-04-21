#' @title Reference
#'
#' @description Normalise cell range references
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.reference.html}
#'
#' @param worksheet worksheet
#' @param min_col min_col
#' @param min_row min_row
#' @param max_col max_col
#' @param max_row max_row
#' @param range_string range_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' Reference(worksheet = wb$active, min_col = 1L, min_row = 1L, max_col = 1L, max_row = 1L)
#' }
#'
#' @export
Reference <- function(worksheet = NULL, min_col = NULL, min_row = NULL, max_col = NULL, max_row = NULL, range_string = NULL, ...) {

  py_obj <- openpyxl$chart$Reference(
    worksheet = worksheet,
    min_col = min_col,
    min_row = min_row,
    max_col = max_col,
    max_row = max_row,
    range_string = range_string
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
