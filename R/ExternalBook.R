#' @title ExternalBook
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_link.external.html}
#'
#' @param sheetNames sheetNames
#' @param definedNames definedNames
#' @param sheetDataSet sheetDataSet
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalBook()
#' }
#'
#' @export
ExternalBook <- function(sheetNames = NULL, definedNames = list(), sheetDataSet = NULL, id = NULL, ...) {

  py_obj <- openpyxl$workbook$external_link$external$ExternalBook(
    sheetNames = sheetNames,
    definedNames = definedNames,
    sheetDataSet = sheetDataSet,
    id = id
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
