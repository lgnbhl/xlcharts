#' @title ChartsheetView
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.views.html}
#'
#' @param tabSelected tabSelected
#' @param zoomScale zoomScale
#' @param workbookViewId workbookViewId
#' @param zoomToFit zoomToFit
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartsheetView()
#' }
#'
#' @export
ChartsheetView <- function(tabSelected = NULL, zoomScale = NULL, workbookViewId = 0L, zoomToFit = TRUE, extLst = NULL, ...) {

  py_obj <- openpyxl$chartsheet$views$ChartsheetView(
    tabSelected = tabSelected,
    zoomScale = zoomScale,
    workbookViewId = as.integer(workbookViewId),
    zoomToFit = zoomToFit,
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
