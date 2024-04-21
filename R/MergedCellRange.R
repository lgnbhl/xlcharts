#' @title MergedCellRange
#'
#' @description MergedCellRange stores the border information of a merged cell in the top
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.merge.html}
#'
#' @details left cell of the merged cell.
#' The remaining cells in the merged cell are stored as MergedCell objects and
#' get their border information from the upper left cell.
#'
#' @param worksheet worksheet
#' @param coord coord
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' MergedCellRange(worksheet = wb$active, coord = "A1")
#' }
#'
#' @export
MergedCellRange <- function(worksheet, coord, ...) {

  py_obj <- openpyxl$worksheet$merge$MergedCellRange(
    worksheet = worksheet,
    coord = coord
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
