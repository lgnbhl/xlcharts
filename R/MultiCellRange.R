#' @title MultiCellRange
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.cell_range.html}
#'
#' @param ranges ranges
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' MultiCellRange()
#' }
#'
#' @export
MultiCellRange <- function(ranges = list(), ...) {

  py_obj <- openpyxl$worksheet$cell_range$MultiCellRange(
    ranges = ranges
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
