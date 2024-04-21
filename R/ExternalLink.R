#' @title ExternalLink
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_link.external.html}
#'
#' @param externalBook externalBook
#' @param ddeLink ddeLink
#' @param oleLink oleLink
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalLink()
#' }
#'
#' @export
ExternalLink <- function(externalBook = NULL, ddeLink = NULL, oleLink = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$workbook$external_link$external$ExternalLink(
    externalBook = externalBook,
    ddeLink = ddeLink,
    oleLink = oleLink,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
