#' @title DefinedNameList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.defined_name.html}
#'
#' @param definedName definedName
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DefinedNameList()
#' }
#'
#' @export
DefinedNameList <- function(definedName = list(), ...) {

  py_obj <- openpyxl$workbook$defined_name$DefinedNameList(
    definedName = definedName
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
