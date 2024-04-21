#' @title TableFormula
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param array array
#' @param attr_text attr_text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableFormula()
#' }
#'
#' @export
TableFormula <- function(array = NULL, attr_text = NULL, ...) {

  py_obj <- openpyxl$worksheet$table$TableFormula(
    array = array,
    attr_text = attr_text
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
