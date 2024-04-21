#' @title save_workbook
#'
#' @description Save the given workbook on the filesystem under the name filename.
#'
#' \url{https://openpyxl.readthedocs.io/en/latest/api/openpyxl.writer.excel.html}
#'
#' @details :param workbook: the workbook to save
#' :type workbook: :class:`openpyxl.workbook.Workbook` :param filename: the path to which save the workbook
#' :type filename: string :rtype: bool
#'
#' @param workbook workbook
#' @param filename filename
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' save_workbook(workbook = wb, filename = tempfile())
#' }
#'
#' @export
save_workbook <- function(workbook, filename, ...) {

  py_obj <- openpyxl$writer$excel$save_workbook(
    workbook = workbook,
    filename = filename
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
