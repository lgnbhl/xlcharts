#' @title ReadOnlyCell
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.read_only.html}
#'
#' @param sheet sheet
#' @param row row
#' @param column column
#' @param value value
#' @param data_type data_type
#' @param style_id style_id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ReadOnlyCell(sheet = "sheet", row = 1L, column = 1L, value = 1L)
#' }
#'
#' @export
ReadOnlyCell <- function(sheet, row, column, value, data_type = "n", style_id = 0L, ...) {

  py_obj <- openpyxl$cell$read_only$ReadOnlyCell(
    sheet = sheet,
    row = row,
    column = column,
    value = value,
    data_type = data_type,
    style_id = as.integer(style_id)
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
