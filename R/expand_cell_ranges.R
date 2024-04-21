#' @title expand_cell_ranges
#'
#' @description Expand cell ranges to a sequence of addresses.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.datavalidation.html}
#'
#' @details Reverse of collapse_cell_addresses
#' Eg. converts "A1:A2 B1:B2" to (A1, A2, B1, B2)
#'
#' @param range_string range_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An Python builtin object.
#'
#' @examples
#' \dontrun{
#' expand_cell_ranges(range_string = "A1:A2")
#' }
#'
#' @export
expand_cell_ranges <- function(range_string, ...) {

  py_obj <- openpyxl$worksheet$datavalidation$expand_cell_ranges(
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
