#' @title Rule
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param type type
#' @param dxfId dxfId
#' @param priority priority
#' @param stopIfTrue stopIfTrue
#' @param aboveAverage aboveAverage
#' @param percent percent
#' @param bottom bottom
#' @param operator operator
#' @param text text
#' @param timePeriod timePeriod
#' @param rank rank
#' @param stdDev stdDev
#' @param equalAverage equalAverage
#' @param formula formula
#' @param colorScale colorScale
#' @param dataBar dataBar
#' @param iconSet iconSet
#' @param extLst extLst
#' @param dxf dxf
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Rule(type = "colorScale")
#' }
#'
#' @export
Rule <- function(type, dxfId = NULL, priority = 0L, stopIfTrue = NULL, aboveAverage = NULL, percent = NULL, bottom = NULL, operator = NULL, text = NULL, timePeriod = NULL, rank = NULL, stdDev = NULL, equalAverage = NULL, formula = list(), colorScale = NULL, dataBar = NULL, iconSet = NULL, extLst = NULL, dxf = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$Rule(
    type = type,
    dxfId = dxfId,
    priority = as.integer(priority),
    stopIfTrue = stopIfTrue,
    aboveAverage = aboveAverage,
    percent = percent,
    bottom = bottom,
    operator = operator,
    text = text,
    timePeriod = timePeriod,
    rank = rank,
    stdDev = stdDev,
    equalAverage = equalAverage,
    formula = formula,
    colorScale = colorScale,
    dataBar = dataBar,
    iconSet = iconSet,
    extLst = extLst,
    dxf = dxf
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
