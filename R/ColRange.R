#' @title ColRange
#'
#' @description Represent a range of at least one column
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.print_settings.html}
#'
#' @param range_string range_string
#' @param min_col min_col
#' @param max_col max_col
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColRange(range_string = "A:B")
#' }
#'
#' @export
ColRange <- function(range_string = NULL, min_col = NULL, max_col = NULL, ...) {

  py_obj <- openpyxl$worksheet$print_settings$ColRange(
    range_string = range_string,
    min_col = min_col,
    max_col = max_col
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
