#' @title ChartsheetViewList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.views.html}
#'
#' @param sheetView sheetView
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartsheetViewList()
#' }
#'
#' @export
ChartsheetViewList <- function(sheetView = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chartsheet$views$ChartsheetViewList(
    sheetView = sheetView,
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
