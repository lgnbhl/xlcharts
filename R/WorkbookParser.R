#' @title WorkbookParser
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.reader.workbook.html}
#'
#' @param archive archive
#' @param workbook_part_name workbook_part_name
#' @param keep_links keep_links
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WorkbookParser(
#' archive = "archive",
#' workbook_part_name = "workbook_part_name"
#' )
#' }
#'
#' @export
WorkbookParser <- function(archive, workbook_part_name, keep_links = TRUE, ...) {

  py_obj <- openpyxl$reader$workbook$WorkbookParser(
    archive = archive,
    workbook_part_name = workbook_part_name,
    keep_links = keep_links
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
