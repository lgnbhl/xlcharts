#' @title CellSmartTag
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.smart_tag.html}
#'
#' @param cellSmartTagPr cellSmartTagPr
#' @param type type
#' @param deleted deleted
#' @param xmlBased xmlBased
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellSmartTag(type = 1L)
#' }
#'
#' @export
CellSmartTag <- function(cellSmartTagPr = list(), type = NULL, deleted = FALSE, xmlBased = FALSE, ...) {

  py_obj <- openpyxl$worksheet$smart_tag$CellSmartTag(
    cellSmartTagPr = cellSmartTagPr,
    type = type,
    deleted = deleted,
    xmlBased = xmlBased
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
