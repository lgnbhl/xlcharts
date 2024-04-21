#' @title quote_sheetname
#'
#' @description Add quotes around sheetnames if they contain spaces.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @param sheetname sheetname
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An string.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' quote_sheetname(wb$sheetnames)
#' }
#'
#' @export
quote_sheetname <- function(sheetname, ...) {

  py_obj <- openpyxl$utils$cell$quote_sheetname(
    sheetname = sheetname
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
