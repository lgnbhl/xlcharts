#' @title CellSmartTags
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.smart_tag.html}
#'
#' @param cellSmartTag cellSmartTag
#' @param r r
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellSmartTags(cellSmartTag = list(), r = "r")
#' }
#'
#' @export
CellSmartTags <- function(cellSmartTag = list(), r = NULL, ...) {

  py_obj <- openpyxl$worksheet$smart_tag$CellSmartTags(
    cellSmartTag = cellSmartTag,
    r = r
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
