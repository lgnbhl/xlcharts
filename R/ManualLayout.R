#' @title ManualLayout
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.layout.html}
#'
#' @param layoutTarget layoutTarget
#' @param xMode xMode
#' @param yMode yMode
#' @param wMode wMode
#' @param hMode hMode
#' @param x x
#' @param y y
#' @param w w
#' @param h h
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ManualLayout()
#' }
#'
#' @export
ManualLayout <- function(layoutTarget = NULL, xMode = NULL, yMode = NULL, wMode = "factor", hMode = "factor", x = NULL, y = NULL, w = NULL, h = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$layout$ManualLayout(
    layoutTarget = layoutTarget,
    xMode = xMode,
    yMode = yMode,
    wMode = wMode,
    hMode = hMode,
    x = x,
    y = y,
    w = w,
    h = h,
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
