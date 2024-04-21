#' @title get_column_letter
#'
#' @description Convert a column index into a column letter
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @details (3 -> 'C')
#'
#' @param idx idx
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' get_column_letter(idx = 3L)
#' }
#'
#' @export
get_column_letter <- function(idx, ...) {

  py_obj <- openpyxl$utils$cell$get_column_letter(
    idx = idx
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
