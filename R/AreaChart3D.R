#' @title AreaChart3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.area_chart.html}
#'
#' @param gapDepth gapDepth
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AreaChart3D()
#' }
#'
#' @export
AreaChart3D <- function(gapDepth = NULL, ...) {

  py_obj <- openpyxl$chart$AreaChart3D(
    gapDepth = gapDepth
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
