#' @title WebPublishObjectList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.web.html}
#'
#' @param count count
#' @param webPublishObject webPublishObject
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WebPublishObjectList()
#' }
#'
#' @export
WebPublishObjectList <- function(count = NULL, webPublishObject = list(), ...) {

  py_obj <- openpyxl$workbook$web$WebPublishObjectList(
    count = count,
    webPublishObject = webPublishObject
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
