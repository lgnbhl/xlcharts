#' @title WebPublishObject
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.web.html}
#'
#' @param id id
#' @param divId divId
#' @param sourceObject sourceObject
#' @param destinationFile destinationFile
#' @param title title
#' @param autoRepublish autoRepublish
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WebPublishObject(
#' id = 1L,
#' divId = "divId",
#' destinationFile = "destinationFile"
#' )
#' }
#'
#' @export
WebPublishObject <- function(id = NULL, divId = NULL, sourceObject = NULL, destinationFile = NULL, title = NULL, autoRepublish = NULL, ...) {

  py_obj <- openpyxl$workbook$web$WebPublishObject(
    id = id,
    divId = divId,
    sourceObject = sourceObject,
    destinationFile = destinationFile,
    title = title,
    autoRepublish = autoRepublish
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
