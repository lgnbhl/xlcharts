#' @title range_boundaries
#'
#' @description Convert a range string into a list of boundaries:
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @details (min_col, min_row, max_col, max_row)
#' Cell coordinates will be converted into a range with the cell at both end
#'
#' @param range_string range_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @section Convert a range string into a tuple of boundaries:
#' (min_col, min_row, max_col, max_row) Cell coordinates will be converted into a range with the cell at both end
#'
#' @return An list.
#'
#' @examples
#' \dontrun{
#' range_boundaries(range_string = "A")
#' }
#'
#' @export
range_boundaries <- function(range_string, ...) {

  py_obj <- openpyxl$utils$cell$range_boundaries(
    range_string = range_string
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
