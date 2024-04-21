#' @title column_index_from_string
#'
#' @description Convert a column name into a numerical index
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @details ('A' -> 1)
#'
#' @param str_col str_col
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' column_index_from_string(str_col = "A")
#' }
#'
#' @export
column_index_from_string <- function(str_col, ...) {

  py_obj <- openpyxl$utils$cell$column_index_from_string(
    str_col = str_col
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
