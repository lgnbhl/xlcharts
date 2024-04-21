#' @title PrintOptions
#'
#' @description Worksheet print options
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.page.html}
#'
#' @param horizontalCentered horizontalCentered
#' @param verticalCentered verticalCentered
#' @param headings headings
#' @param gridLines gridLines
#' @param gridLinesSet gridLinesSet
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PrintOptions()
#' }
#'
#' @export
PrintOptions <- function(horizontalCentered = NULL, verticalCentered = NULL, headings = NULL, gridLines = NULL, gridLinesSet = NULL, ...) {

  py_obj <- openpyxl$worksheet$page$PrintOptions(
    horizontalCentered = horizontalCentered,
    verticalCentered = verticalCentered,
    headings = headings,
    gridLines = gridLines,
    gridLinesSet = gridLinesSet
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
