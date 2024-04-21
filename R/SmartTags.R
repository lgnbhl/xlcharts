#' @title SmartTags
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.smart_tag.html}
#'
#' @param cellSmartTags cellSmartTags
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SmartTags()
#' }
#'
#' @export
SmartTags <- function(cellSmartTags = list(), ...) {

  py_obj <- openpyxl$worksheet$smart_tag$SmartTags(
    cellSmartTags = cellSmartTags
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
