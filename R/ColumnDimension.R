#' @title ColumnDimension
#'
#' @description Information about the display properties of a column.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param worksheet worksheet
#' @param index index
#' @param width width
#' @param bestFit bestFit
#' @param hidden hidden
#' @param outlineLevel outlineLevel
#' @param outline_level outline_level
#' @param collapsed collapsed
#' @param style style
#' @param min min
#' @param max max
#' @param customWidth customWidth
#' @param visible visible
#' @param auto_size auto_size
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- wb$active
#' ColumnDimension(worksheet = ws)
#' }
#'
#' @export
ColumnDimension <- function(worksheet, index = "A", width = 13L, bestFit = FALSE, hidden = FALSE, outlineLevel = 0L, outline_level = NULL, collapsed = FALSE, style = NULL, min = NULL, max = NULL, customWidth = FALSE, visible = NULL, auto_size = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$ColumnDimension(
    worksheet = worksheet,
    index = index,
    width = as.integer(width),
    bestFit = bestFit,
    hidden = hidden,
    outlineLevel = as.integer(outlineLevel),
    outline_level = outline_level,
    collapsed = collapsed,
    style = style,
    min = min,
    max = max,
    customWidth = customWidth,
    visible = visible,
    auto_size = auto_size
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
