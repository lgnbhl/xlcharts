#' @title MergedCell
#'
#' @description Describes the properties of a cell in a merged cell and helps to display the borders of the merged cell.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.cell.html}
#'
#' @details The value of a MergedCell is always NULL.
#'
#' @param worksheet worksheet
#' @param row row
#' @param column column
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' MergedCell(worksheet = wb$active, row = 1L, column = 1L)
#' }
#'
#' @export
MergedCell <- function(worksheet, row = NULL, column = NULL, ...) {

  py_obj <- openpyxl$cell$cell$MergedCell(
    worksheet = worksheet,
    row = row,
    column = column
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
