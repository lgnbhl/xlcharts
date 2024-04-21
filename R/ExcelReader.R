#' @title ExcelReader
#'
#' @description Read an Excel package and dispatch the contents to the relevant modules
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.reader.excel.html}
#'
#' @param fn fn
#' @param read_only read_only
#' @param keep_vba keep_vba
#' @param data_only data_only
#' @param keep_links keep_links
#' @param rich_text rich_text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' tmp <- write_xlsx(list(mysheet = iris))
#' ExcelReader(fn = tmp)
#' }
#'
#' @export
ExcelReader <- function(fn, read_only = FALSE, keep_vba = FALSE, data_only = FALSE, keep_links = TRUE, rich_text = FALSE, ...) {

  py_obj <- openpyxl$reader$excel$ExcelReader(
    fn = fn,
    read_only = read_only,
    keep_vba = keep_vba,
    data_only = data_only,
    keep_links = keep_links,
    rich_text = rich_text
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
