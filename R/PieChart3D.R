#' @title PieChart3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pie_chart.html}
#'
#' @param varyColors varyColors
#' @param ser ser
#' @param dLbls dLbls
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PieChart3D()
#' }
#'
#' @export
PieChart3D <- function(varyColors = TRUE, ser = list(), dLbls = NULL, ...) {

  py_obj <- openpyxl$chart$PieChart3D(
    varyColors = varyColors,
    ser = ser,
    dLbls = dLbls
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
