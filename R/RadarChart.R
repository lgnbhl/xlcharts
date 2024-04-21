#' @title RadarChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.radar_chart.html}
#'
#' @param radarStyle radarStyle
#' @param varyColors varyColors
#' @param ser ser
#' @param dLbls dLbls
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RadarChart()
#' }
#'
#' @export
RadarChart <- function(radarStyle = "standard", varyColors = NULL, ser = list(), dLbls = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$RadarChart(
    radarStyle = radarStyle,
    varyColors = varyColors,
    ser = ser,
    dLbls = dLbls,
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
