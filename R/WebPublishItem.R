#' @title WebPublishItem
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.publish.html}
#'
#' @param id id
#' @param divId divId
#' @param sourceType sourceType
#' @param sourceRef sourceRef
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
#' WebPublishItem(
#' id = 1L,
#' divId = "divId",
#' sourceType = "chart",
#' sourceRef = "sourceRef",
#' destinationFile = "destinationFile"
#' )
#' }
#'
#' @export
WebPublishItem <- function(id = NULL, divId = NULL, sourceType = NULL, sourceRef = NULL, sourceObject = NULL, destinationFile = NULL, title = NULL, autoRepublish = NULL, ...) {

  py_obj <- openpyxl$chartsheet$publish$WebPublishItem(
    id = id,
    divId = divId,
    sourceType = sourceType,
    sourceRef = sourceRef,
    sourceObject = sourceObject,
    destinationFile = destinationFile,
    title = title,
    autoRepublish = autoRepublish
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
