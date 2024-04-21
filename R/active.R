#' @title active
#'
#' @description Get the currently active sheet or NULL.
#'
#'\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.workbook.html#openpyxl.workbook.workbook.Workbook.active}
#'
#' @details :type: :class:`openpyxl.worksheet.worksheet.Worksheet`
#'
#' @param py_obj py_obj
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' wb |> active() #equivalent to wb$active
#' }
#'
#' @export
active <- function(py_obj) {
  if(!inherits(py_obj,'python.builtin.object')) {
    warning('py_obj is not a python.builtin.object')
  }
  py_obj <- py_obj$active
  return(py_obj)
}
