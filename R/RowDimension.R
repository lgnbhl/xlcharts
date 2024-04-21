#' @title RowDimension
#'
#' @description Information about the display properties of a row.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param worksheet worksheet
#' @param index index
#' @param ht ht
#' @param customHeight customHeight
#' @param s s
#' @param customFormat customFormat
#' @param hidden hidden
#' @param outlineLevel outlineLevel
#' @param outline_level outline_level
#' @param collapsed collapsed
#' @param visible visible
#' @param height height
#' @param r r
#' @param spans spans
#' @param thickBot thickBot
#' @param thickTop thickTop
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' RowDimension(wb$active)
#' }
#'
#' @export
RowDimension <- function(worksheet, index = 0L, ht = NULL, customHeight = NULL, s = NULL, customFormat = NULL, hidden = FALSE, outlineLevel = 0L, outline_level = NULL, collapsed = FALSE, visible = NULL, height = NULL, r = NULL, spans = NULL, thickBot = NULL, thickTop = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$RowDimension(
    worksheet = worksheet,
    index = as.integer(index),
    ht = ht,
    customHeight = customHeight,
    s = s,
    customFormat = customFormat,
    hidden = hidden,
    outlineLevel = as.integer(outlineLevel),
    outline_level = outline_level,
    collapsed = collapsed,
    visible = visible,
    height = height,
    r = r,
    spans = spans,
    thickBot = thickBot,
    thickTop = thickTop
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
