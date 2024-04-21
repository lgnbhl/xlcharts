#' @title get_column_interval
#'
#' @description Given the start and end columns, return all the columns in the series.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @details The start and end columns can be either column letters or 1-based
#' indexes.
#'
#' @param start start
#' @param end end
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' get_column_interval(start = "A", end = 3L)
#' }
#'
#' @export
get_column_interval <- function(start, end, ...) {

  py_obj <- openpyxl$utils$cell$get_column_interval(
    start = start,
    end = end
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
