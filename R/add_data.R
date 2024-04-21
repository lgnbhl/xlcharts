#' Add a range of data in a single pass.
#'
#' The default is to treat each column as a data series.
#'
#' @param py_obj py_obj
#' @param data data
#' @param from_rows from_rows
#' @param titles_from_data titles_from_data
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
add_data <- function(py_obj, data, from_rows = FALSE, titles_from_data = FALSE) {
  if(!inherits(py_obj,'python.builtin.object')) {
    warning('py_obj is not a python.builtin.object')
  }
  py_obj$add_data(
    data = data,
    from_rows = from_rows,
    titles_from_data = titles_from_data
  )
  return(py_obj)
}
