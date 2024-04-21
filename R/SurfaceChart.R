#' @title SurfaceChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.surface_chart.html}
#'
#' @param wireframe wireframe
#' @param ser ser
#' @param bandFmts bandFmts
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SurfaceChart()
#' }
#'
#' @export
SurfaceChart <- function(wireframe = NULL, ser = list(), bandFmts = NULL, ...) {

  py_obj <- openpyxl$chart$SurfaceChart(
    wireframe = wireframe,
    ser = ser,
    bandFmts = bandFmts
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
