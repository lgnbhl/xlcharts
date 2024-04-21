#' @title ExternalDefinedName
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_link.external.html}
#'
#' @param name name
#' @param refersTo refersTo
#' @param sheetId sheetId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalDefinedName(name = "name")
#' }
#'
#' @export
ExternalDefinedName <- function(name = NULL, refersTo = NULL, sheetId = NULL, ...) {

  py_obj <- openpyxl$workbook$external_link$external$ExternalDefinedName(
    name = name,
    refersTo = refersTo,
    sheetId = sheetId
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
