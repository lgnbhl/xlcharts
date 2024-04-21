#' @title range_to_tuple
#'
#' @description Convert a worksheet range to the sheetname and maximum and minimum
#' coordinate indices
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @param range_string range_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An list.
#'
#' @examples
#' \dontrun{
#' range_to_tuple(range_string = "sheetname!A1:E4")
#' }
#'
#' @export
range_to_tuple <- function(range_string, ...) {

  py_obj <- openpyxl$utils$cell$range_to_tuple(
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
