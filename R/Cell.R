#' @title Cell
#'
#' @description Describes cell associated properties.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.cell.html}
#'
#' @details Properties of interest include style, type, value, and address.
#'
#' @param worksheet worksheet
#' @param row row
#' @param column column
#' @param value value
#' @param style_array style_array
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- ws$active
#' Cell(worksheet = ws, row = 1L, column = 1L)
#' }
#'
#' @export
Cell <- function(worksheet, row = NULL, column = NULL, value = NULL, style_array = NULL, ...) {

  py_obj <- openpyxl$cell$Cell(
    worksheet = worksheet,
    row = row,
    column = column,
    value = value,
    style_array = style_array
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
