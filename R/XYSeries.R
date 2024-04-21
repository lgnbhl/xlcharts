#' @title XYSeries
#'
#' @description Dedicated series for charts that have x and y series
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.series.html}
#'
#' @param idx idx
#' @param order order
#' @param tx tx
#' @param spPr spPr
#' @param pictureOptions pictureOptions
#' @param dPt dPt
#' @param dLbls dLbls
#' @param trendline trendline
#' @param errBars errBars
#' @param cat cat
#' @param val val
#' @param invertIfNegative invertIfNegative
#' @param shape shape
#' @param xVal xVal
#' @param yVal yVal
#' @param bubbleSize bubbleSize
#' @param bubble3D bubble3D
#' @param marker marker
#' @param smooth smooth
#' @param explosion explosion
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' XYSeries()
#' }
#'
#' @export
XYSeries <- function(idx = 0L, order = 0L, tx = NULL, spPr = NULL, pictureOptions = NULL, dPt = list(), dLbls = NULL, trendline = NULL, errBars = NULL, cat = NULL, val = NULL, invertIfNegative = NULL, shape = NULL, xVal = NULL, yVal = NULL, bubbleSize = NULL, bubble3D = NULL, marker = NULL, smooth = NULL, explosion = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$series$XYSeries(
    idx = as.integer(idx),
    order = as.integer(order),
    tx = tx,
    spPr = spPr,
    pictureOptions = pictureOptions,
    dPt = dPt,
    dLbls = dLbls,
    trendline = trendline,
    errBars = errBars,
    cat = cat,
    val = val,
    invertIfNegative = invertIfNegative,
    shape = shape,
    xVal = xVal,
    yVal = yVal,
    bubbleSize = bubbleSize,
    bubble3D = bubble3D,
    marker = marker,
    smooth = smooth,
    explosion = explosion,
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
