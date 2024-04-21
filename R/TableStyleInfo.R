#' @title TableStyleInfo
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param name name
#' @param showFirstColumn showFirstColumn
#' @param showLastColumn showLastColumn
#' @param showRowStripes showRowStripes
#' @param showColumnStripes showColumnStripes
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableStyleInfo()
#' }
#'
#' @export
TableStyleInfo <- function(name = NULL, showFirstColumn = NULL, showLastColumn = NULL, showRowStripes = NULL, showColumnStripes = NULL, ...) {

  py_obj <- openpyxl$worksheet$table$TableStyleInfo(
    name = name,
    showFirstColumn = showFirstColumn,
    showLastColumn = showLastColumn,
    showRowStripes = showRowStripes,
    showColumnStripes = showColumnStripes
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
