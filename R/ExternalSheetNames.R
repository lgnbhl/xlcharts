#' @title ExternalSheetNames
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_link.external.html}
#'
#' @param sheetName sheetName
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalSheetNames()
#' }
#'
#' @export
ExternalSheetNames <- function(sheetName = list(), ...) {

  py_obj <- openpyxl$workbook$external_link$external$ExternalSheetNames(
    sheetName = sheetName
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
