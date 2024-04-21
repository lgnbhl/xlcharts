#' @title DoughnutChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pie_chart.html}
#'
#' @param firstSliceAng firstSliceAng
#' @param holeSize holeSize
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DoughnutChart()
#' }
#'
#' @export
DoughnutChart <- function(firstSliceAng = 0L, holeSize = 10L, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$DoughnutChart(
    firstSliceAng = as.integer(firstSliceAng),
    holeSize = as.integer(holeSize),
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
