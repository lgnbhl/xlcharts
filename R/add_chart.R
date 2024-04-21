#' Add a chart to the sheet
#'
#' Optionally provide a cell for the top-left anchor
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.worksheet.html#openpyxl.worksheet.worksheet.Worksheet.add_chart}
#'
#' @param chart chart
#' @param py_obj py_obj
#' @param anchor anchor
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- wb$active
#' chart <- BarChart(type = "col")
#' data <- Reference(ws, min_col=2, min_row=1, max_row=7, max_col=3)
#' cats <- Reference(ws, min_col=1, min_row=2, max_row=7)
#' chart |>
#'   add_data(data = data, titles_from_data = TRUE) |>
#'   set_categories(cats)
#' ws |> add_chart(chart, "A10")
#' }
#'
#' @export
add_chart <- function(py_obj, chart, anchor = NULL, ...) {
  # if chartsheet, no anchor argument
  if(inherits(py_obj,"openpyxl.chartsheet.chartsheet.Chartsheet")) {
    py_obj$add_chart(
      chart = chart,
      ...
    )
    return(py_obj)
  }
  py_obj$add_chart(
    chart = chart,
    anchor = anchor,
    ...
  )
  return(py_obj)
}
