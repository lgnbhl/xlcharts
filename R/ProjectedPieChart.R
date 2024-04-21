#' @title ProjectedPieChart
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pie_chart.html}
#'
#' @details This element contains the pie of pie or bar of pie series on this
#' chart. Only the first series shall be displayed. The splitType element
#' shall determine whether the splitPos and custSplit elements apply.
#'
#' @param ofPieType ofPieType
#' @param gapWidth gapWidth
#' @param splitType splitType
#' @param splitPos splitPos
#' @param custSplit custSplit
#' @param secondPieSize secondPieSize
#' @param serLines serLines
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ProjectedPieChart()
#' }
#'
#' @export
ProjectedPieChart <- function(ofPieType = "pie", gapWidth = NULL, splitType = "auto", splitPos = NULL, custSplit = NULL, secondPieSize = 75L, serLines = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$ProjectedPieChart(
    ofPieType = ofPieType,
    gapWidth = gapWidth,
    splitType = splitType,
    splitPos = splitPos,
    custSplit = custSplit,
    secondPieSize = as.integer(secondPieSize),
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
