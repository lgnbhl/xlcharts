#' @title ChartSpace
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.chartspace.html}
#'
#' @param date1904 date1904
#' @param lang lang
#' @param roundedCorners roundedCorners
#' @param style style
#' @param clrMapOvr clrMapOvr
#' @param pivotSource pivotSource
#' @param protection protection
#' @param chart chart
#' @param spPr spPr
#' @param txPr txPr
#' @param externalData externalData
#' @param printSettings printSettings
#' @param userShapes userShapes
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartSpace(chart = ChartContainer())
#' }
#'
#' @export
ChartSpace <- function(date1904 = NULL, lang = NULL, roundedCorners = NULL, style = NULL, clrMapOvr = NULL, pivotSource = NULL, protection = NULL, chart = NULL, spPr = NULL, txPr = NULL, externalData = NULL, printSettings = NULL, userShapes = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$chartspace$ChartSpace(
    date1904 = date1904,
    lang = lang,
    roundedCorners = roundedCorners,
    style = style,
    clrMapOvr = clrMapOvr,
    pivotSource = pivotSource,
    protection = protection,
    chart = chart,
    spPr = spPr,
    txPr = txPr,
    externalData = externalData,
    printSettings = printSettings,
    userShapes = userShapes,
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
