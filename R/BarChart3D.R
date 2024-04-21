#' @title BarChart3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.bar_chart.html}
#'
#' @param gapWidth gapWidth
#' @param gapDepth gapDepth
#' @param shape shape
#' @param serLines serLines
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BarChart3D()
#' }
#'
#' @export
BarChart3D <- function(gapWidth = 150L, gapDepth = 150L, shape = NULL, serLines = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$BarChart3D(
    gapWidth = as.integer(gapWidth),
    gapDepth = as.integer(gapDepth),
    shape = shape,
    serLines = serLines,
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
