#' @title WorksheetCopy
#'
#' @description Copy the values, styles, dimensions, merged cells, margins, and
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.copier.html}
#'
#' @details print/page setup from one worksheet to another within the same
#' workbook.
#'
#' @param source_worksheet source_worksheet
#' @param target_worksheet target_worksheet
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws1 <- wb$active
#' ws2 <- wb$create_sheet("Mysheet")
#' WorksheetCopy(source_worksheet = ws1, target_worksheet = ws2)
#' }
#'
#' @export
WorksheetCopy <- function(source_worksheet, target_worksheet, ...) {

  py_obj <- openpyxl$worksheet$copier$WorksheetCopy(
    source_worksheet = source_worksheet,
    target_worksheet = target_worksheet
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
