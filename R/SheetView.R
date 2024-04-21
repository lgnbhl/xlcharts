#' @title SheetView
#'
#' @description Information about the visible portions of this sheet.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.views.html}
#'
#' @param windowProtection windowProtection
#' @param showFormulas showFormulas
#' @param showGridLines showGridLines
#' @param showRowColHeaders showRowColHeaders
#' @param showZeros showZeros
#' @param rightToLeft rightToLeft
#' @param tabSelected tabSelected
#' @param showRuler showRuler
#' @param showOutlineSymbols showOutlineSymbols
#' @param defaultGridColor defaultGridColor
#' @param showWhiteSpace showWhiteSpace
#' @param view view
#' @param topLeftCell topLeftCell
#' @param colorId colorId
#' @param zoomScale zoomScale
#' @param zoomScaleNormal zoomScaleNormal
#' @param zoomScaleSheetLayoutView zoomScaleSheetLayoutView
#' @param zoomScalePageLayoutView zoomScalePageLayoutView
#' @param zoomToFit zoomToFit
#' @param workbookViewId workbookViewId
#' @param selection selection
#' @param pane pane
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SheetView()
#' }
#'
#' @export
SheetView <- function(windowProtection = NULL, showFormulas = NULL, showGridLines = NULL, showRowColHeaders = NULL, showZeros = NULL, rightToLeft = NULL, tabSelected = NULL, showRuler = NULL, showOutlineSymbols = NULL, defaultGridColor = NULL, showWhiteSpace = NULL, view = NULL, topLeftCell = NULL, colorId = NULL, zoomScale = NULL, zoomScaleNormal = NULL, zoomScaleSheetLayoutView = NULL, zoomScalePageLayoutView = NULL, zoomToFit = NULL, workbookViewId = 0L, selection = NULL, pane = NULL, ...) {

  py_obj <- openpyxl$worksheet$views$SheetView(
    windowProtection = windowProtection,
    showFormulas = showFormulas,
    showGridLines = showGridLines,
    showRowColHeaders = showRowColHeaders,
    showZeros = showZeros,
    rightToLeft = rightToLeft,
    tabSelected = tabSelected,
    showRuler = showRuler,
    showOutlineSymbols = showOutlineSymbols,
    defaultGridColor = defaultGridColor,
    showWhiteSpace = showWhiteSpace,
    view = view,
    topLeftCell = topLeftCell,
    colorId = colorId,
    zoomScale = zoomScale,
    zoomScaleNormal = zoomScaleNormal,
    zoomScaleSheetLayoutView = zoomScaleSheetLayoutView,
    zoomScalePageLayoutView = zoomScalePageLayoutView,
    zoomToFit = zoomToFit,
    workbookViewId = as.integer(workbookViewId),
    selection = selection,
    pane = pane
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
