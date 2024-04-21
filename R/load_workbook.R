#' @title load_workbook
#'
#' @description Open the given filename and return the workbook
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.reader.excel.html}
#'
#' @param filename filename string or a file-like object open in binary mode c.f., :class:`zipfile.ZipFile` :param read_only: optimised for reading, content cannot be edited
#' @param read_only read_only bool
#' @param keep_vba keep_vba preserve vba content (this does NOT mean you can use it)
#' @param data_only data_only bool
#' @param keep_links keep_links whether links to external workbooks should be preserved. The default is TRUE
#' @param rich_text rich_text bool :rtype: :class:`openpyxl.workbook.Workbook` .. note:: When using lazy load, all worksheets will be :class:`openpyxl.worksheet.iter_worksheet.IterableWorksheet` and the returned workbook will be read-only.
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' tmp <- write_xlsx(list(mysheet = iris))
#' load_workbook(filename = tmp)
#' }
#' @export
load_workbook <- function(filename, read_only = FALSE, keep_vba = FALSE, data_only = FALSE, keep_links = TRUE, rich_text = FALSE, ...) {

  py_obj <- openpyxl$reader$excel$load_workbook(
    filename = filename,
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
