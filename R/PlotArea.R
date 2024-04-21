#' @title PlotArea
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.plotarea.html}
#'
#' @param layout layout
#' @param dTable dTable
#' @param spPr spPr
#' @param charts _charts
#' @param axes _axes
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PlotArea()
#' }
#'
#' @export
PlotArea <- function(layout = NULL, dTable = NULL, spPr = NULL, charts = list(), axes = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$chart$plotarea$PlotArea(
    layout = layout,
    dTable = dTable,
    spPr = spPr,
    '_charts' = charts,
    '_axes' = axes,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
