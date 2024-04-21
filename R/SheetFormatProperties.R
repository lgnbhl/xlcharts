#' @title SheetFormatProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param baseColWidth baseColWidth
#' @param defaultColWidth defaultColWidth
#' @param defaultRowHeight defaultRowHeight
#' @param customHeight customHeight
#' @param zeroHeight zeroHeight
#' @param thickTop thickTop
#' @param thickBottom thickBottom
#' @param outlineLevelRow outlineLevelRow
#' @param outlineLevelCol outlineLevelCol
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SheetFormatProperties()
#' }
#'
#' @export
SheetFormatProperties <- function(baseColWidth = 8L, defaultColWidth = NULL, defaultRowHeight = 15L, customHeight = NULL, zeroHeight = NULL, thickTop = NULL, thickBottom = NULL, outlineLevelRow = NULL, outlineLevelCol = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$SheetFormatProperties(
    baseColWidth = as.integer(baseColWidth),
    defaultColWidth = defaultColWidth,
    defaultRowHeight = as.integer(defaultRowHeight),
    customHeight = customHeight,
    zeroHeight = zeroHeight,
    thickTop = thickTop,
    thickBottom = thickBottom,
    outlineLevelRow = outlineLevelRow,
    outlineLevelCol = outlineLevelCol
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
