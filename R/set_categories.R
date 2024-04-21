#' @title set_categories
#'
#' @description Set the categories / x-axis values
#'
#' @param py_obj py_obj
#' @param labels labels
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- active(wb)
#'
#' chart1 <- BarChart(
#'   type = "col",
#'  style = 10,
#'   title = "Bar Chart",
#'   shape = 4
#' ) |>
#'   y_axis(title = "Test number") |>
#'   x_axis(title = "Sample length (mm)")
#'
#' data <- Reference(ws, min_col=2, min_row=1, max_row=7, max_col=3)
#' cats <- Reference(ws, min_col=1, min_row=2, max_row=7)
#'
#' chart1 |>
#'   add_data(data = data, titles_from_data = TRUE) |>
#'   set_categories(cats)
#' }
#'
#' @export
set_categories <- function(py_obj, labels) {
  if(!inherits(py_obj,'python.builtin.object')) {
    warning('py_obj is not a python.builtin.object')
  }
  py_obj$set_categories(
    labels = labels
  )
  return(py_obj)
}
