#' @title rows_from_range
#'
#' @description Get individual addresses for every cell in a range.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @details Yields one row at a time.
#'
#' @param range_string range_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' rows_from_range(range_string = "A")
#' }
#'
#' @export
rows_from_range <- function(range_string, ...) {

  py_obj <- openpyxl$utils$cell$rows_from_range(
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
