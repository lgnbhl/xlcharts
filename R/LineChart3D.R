#' @title LineChart3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.line_chart.html}
#'
#' @param gapDepth gapDepth
#' @param hiLowLines hiLowLines
#' @param upDownBars upDownBars
#' @param marker marker
#' @param smooth smooth
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LineChart3D()
#' }
#' @export
LineChart3D <- function(gapDepth = NULL, hiLowLines = NULL, upDownBars = NULL, marker = NULL, smooth = NULL, ...) {

  py_obj <- openpyxl$chart$LineChart3D(
    gapDepth = gapDepth,
    hiLowLines = hiLowLines,
    upDownBars = upDownBars,
    marker = marker,
    smooth = smooth
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
