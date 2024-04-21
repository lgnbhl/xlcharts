#' @title SmartTag
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.smart_tags.html}
#'
#' @param namespaceUri namespaceUri
#' @param name name
#' @param url url
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SmartTag()
#' }
#'
#' @export
SmartTag <- function(namespaceUri = NULL, name = NULL, url = NULL, ...) {

  py_obj <- openpyxl$workbook$smart_tags$SmartTag(
    namespaceUri = namespaceUri,
    name = name,
    url = url
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
