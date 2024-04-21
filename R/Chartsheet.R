#' @title Chartsheet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.chartsheet.html}
#'
#' @param sheetPr sheetPr
#' @param sheetViews sheetViews
#' @param sheetProtection sheetProtection
#' @param customSheetViews customSheetViews
#' @param pageMargins pageMargins
#' @param pageSetup pageSetup
#' @param headerFooter headerFooter
#' @param drawing drawing
#' @param drawingHF drawingHF
#' @param picture picture
#' @param webPublishItems webPublishItems
#' @param extLst extLst
#' @param parent parent
#' @param title title
#' @param sheet_state sheet_state
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Chartsheet()
#' }
#'
#' @export
Chartsheet <- function(sheetPr = NULL, sheetViews = NULL, sheetProtection = NULL, customSheetViews = NULL, pageMargins = NULL, pageSetup = NULL, headerFooter = NULL, drawing = NULL, drawingHF = NULL, picture = NULL, webPublishItems = NULL, extLst = NULL, parent = NULL, title = "", sheet_state = "visible", ...) {

  py_obj <- openpyxl$chartsheet$chartsheet$Chartsheet(
    sheetPr = sheetPr,
    sheetViews = sheetViews,
    sheetProtection = sheetProtection,
    customSheetViews = customSheetViews,
    pageMargins = pageMargins,
    pageSetup = pageSetup,
    headerFooter = headerFooter,
    drawing = drawing,
    drawingHF = drawingHF,
    picture = picture,
    webPublishItems = webPublishItems,
    extLst = extLst,
    parent = parent,
    title = title,
    sheet_state = sheet_state
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
