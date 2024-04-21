#' @title XMLColumnProps
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param mapId mapId
#' @param xpath xpath
#' @param denormalized denormalized
#' @param xmlDataType xmlDataType
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' XMLColumnProps(mapId = 1L, xpath = "xpath", xmlDataType = "xmlDataType")
#' }
#'
#' @export
XMLColumnProps <- function(mapId = NULL, xpath = NULL, denormalized = NULL, xmlDataType = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$worksheet$table$XMLColumnProps(
    mapId = mapId,
    xpath = xpath,
    denormalized = denormalized,
    xmlDataType = xmlDataType,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
