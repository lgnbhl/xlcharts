#' @title ExcelWriter
#'
#' @description Write a workbook object to an Excel file.
#'
#' \url{https://openpyxl.readthedocs.io/en/latest/api/openpyxl.writer.excel.html}
#'
#' @param workbook workbook
#' @param archive archive
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ExcelWriter(workbook = wb, archive = wb)
#' }
#'
#' @export
ExcelWriter <- function(workbook, archive, ...) {

  py_obj <- openpyxl$writer$excel$ExcelWriter(
    workbook = workbook,
    archive = archive
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
