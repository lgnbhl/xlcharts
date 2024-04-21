#' @title TableStyle
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.table.html}
#'
#' @param name name
#' @param pivot pivot
#' @param table table
#' @param count count
#' @param tableStyleElement tableStyleElement
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableStyle(name = "name")
#' }
#'
#' @export
TableStyle <- function(name = NULL, pivot = NULL, table = NULL, count = NULL, tableStyleElement = list(), ...) {

  py_obj <- openpyxl$styles$table$TableStyle(
    name = name,
    pivot = pivot,
    table = table,
    count = count,
    tableStyleElement = tableStyleElement
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
