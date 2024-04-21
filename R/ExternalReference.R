#' @title ExternalReference
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_reference.html}
#'
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalReference(id = "id")
#' }
#'
#' @export
ExternalReference <- function(id, ...) {

  py_obj <- openpyxl$workbook$external_reference$ExternalReference(
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
