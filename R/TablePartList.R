#' @title TablePartList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param count count
#' @param tablePart tablePart
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TablePartList()
#' }
#'
#' @export
TablePartList <- function(count = NULL, tablePart = list(), ...) {

  py_obj <- openpyxl$worksheet$table$TablePartList(
    count = count,
    tablePart = tablePart
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
