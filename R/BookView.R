#' @title BookView
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.views.html}
#'
#' @param visibility visibility
#' @param minimized minimized
#' @param showHorizontalScroll showHorizontalScroll
#' @param showVerticalScroll showVerticalScroll
#' @param showSheetTabs showSheetTabs
#' @param xWindow xWindow
#' @param yWindow yWindow
#' @param windowWidth windowWidth
#' @param windowHeight windowHeight
#' @param tabRatio tabRatio
#' @param firstSheet firstSheet
#' @param activeTab activeTab
#' @param autoFilterDateGrouping autoFilterDateGrouping
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BookView()
#' }
#'
#' @export
BookView <- function(visibility = "visible", minimized = FALSE, showHorizontalScroll = TRUE, showVerticalScroll = TRUE, showSheetTabs = TRUE, xWindow = NULL, yWindow = NULL, windowWidth = NULL, windowHeight = NULL, tabRatio = 600L, firstSheet = 0L, activeTab = 0L, autoFilterDateGrouping = TRUE, extLst = NULL, ...) {

  py_obj <- openpyxl$workbook$views$BookView(
    visibility = visibility,
    minimized = minimized,
    showHorizontalScroll = showHorizontalScroll,
    showVerticalScroll = showVerticalScroll,
    showSheetTabs = showSheetTabs,
    xWindow = xWindow,
    yWindow = yWindow,
    windowWidth = windowWidth,
    windowHeight = windowHeight,
    tabRatio = as.integer(tabRatio),
    firstSheet = as.integer(firstSheet),
    activeTab = as.integer(activeTab),
    autoFilterDateGrouping = autoFilterDateGrouping,
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
