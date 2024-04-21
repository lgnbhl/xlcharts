#' Check for duplicate name in definedNames and other worksheet tables before adding table.
#'
#' @param table table
#' @param py_obj py_obj
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- wb$active
#' tab = Table(displayName="Table1", ref="A1:E5")
#' ws |> add_table(tab)
#' ws$tables
#' }
#'
#' @export
add_table <- function(py_obj, table) {
  if(!inherits(py_obj,'python.builtin.object')) {
    warning('py_obj is not a python.builtin.object')
  }
  py_obj$add_table(
    table = table
  )
  return(py_obj)
}
