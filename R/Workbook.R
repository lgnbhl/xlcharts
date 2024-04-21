#' @title Workbook
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.workbook.html#openpyxl.workbook.workbook.Workbook}
#'
#' @param write_only write_only
#' @param iso_dates iso_dates
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Workbook()
#' }
#'
#' @export
Workbook <- function(write_only = FALSE, iso_dates = FALSE, ...) {

  py_obj <- openpyxl$workbook$workbook$Workbook(
    write_only = write_only,
    iso_dates = iso_dates
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
