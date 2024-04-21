#' @title BubbleChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.bubble_chart.html}
#'
#' @param varyColors varyColors
#' @param ser ser
#' @param dLbls dLbls
#' @param bubble3D bubble3D
#' @param bubbleScale bubbleScale
#' @param showNegBubbles showNegBubbles
#' @param sizeRepresents sizeRepresents
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BubbleChart()
#' }
#'
#' @export
BubbleChart <- function(varyColors = NULL, ser = list(), dLbls = NULL, bubble3D = NULL, bubbleScale = NULL, showNegBubbles = NULL, sizeRepresents = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$BubbleChart(
    varyColors = varyColors,
    ser = ser,
    dLbls = dLbls,
    bubble3D = bubble3D,
    bubbleScale = bubbleScale,
    showNegBubbles = showNegBubbles,
    sizeRepresents = sizeRepresents,
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
