#' @title ChartContainer
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.chartspace.html}
#'
#' @param title title
#' @param autoTitleDeleted autoTitleDeleted
#' @param pivotFmts pivotFmts
#' @param view3D view3D
#' @param floor floor
#' @param sideWall sideWall
#' @param backWall backWall
#' @param plotArea plotArea
#' @param legend legend
#' @param plotVisOnly plotVisOnly
#' @param dispBlanksAs dispBlanksAs
#' @param showDLblsOverMax showDLblsOverMax
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartContainer()
#' }
#'
#' @export
ChartContainer <- function(title = NULL, autoTitleDeleted = NULL, pivotFmts = list(), view3D = NULL, floor = NULL, sideWall = NULL, backWall = NULL, plotArea = NULL, legend = NULL, plotVisOnly = TRUE, dispBlanksAs = "gap", showDLblsOverMax = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$chartspace$ChartContainer(
    title = title,
    autoTitleDeleted = autoTitleDeleted,
    pivotFmts = pivotFmts,
    view3D = view3D,
    floor = floor,
    sideWall = sideWall,
    backWall = backWall,
    plotArea = plotArea,
    legend = legend,
    plotVisOnly = plotVisOnly,
    dispBlanksAs = dispBlanksAs,
    showDLblsOverMax = showDLblsOverMax,
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
