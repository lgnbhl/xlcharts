#' @title ColorFilter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param dxfId dxfId
#' @param cellColor cellColor
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColorFilter()
#' }
#'
#' @export
ColorFilter <- function(dxfId = NULL, cellColor = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$ColorFilter(
    dxfId = dxfId,
    cellColor = cellColor
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
