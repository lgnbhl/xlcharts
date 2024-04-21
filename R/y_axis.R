#' @title y_axis
#'
#' @description Values must be of type <class 'openpyxl.chart.axis.NumericAxis'>
#'
#' @param py_obj py_obj
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BarChart(type = "col") |>
#'   y_axis(title = "Y axis title")
#' }
#'
#' @export
y_axis <- function(py_obj, ...) {
  if(!inherits(py_obj,'python.builtin.object')) {
    warning('py_obj is not a python.builtin.object')
  }
  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj$y_axis[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
