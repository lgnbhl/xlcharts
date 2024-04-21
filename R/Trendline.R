#' @title Trendline
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.trendline.html}
#'
#' @param name name
#' @param spPr spPr
#' @param trendlineType trendlineType
#' @param order order
#' @param period period
#' @param forward forward
#' @param backward backward
#' @param intercept intercept
#' @param dispRSqr dispRSqr
#' @param dispEq dispEq
#' @param trendlineLbl trendlineLbl
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Trendline()
#' }
#'
#' @export
Trendline <- function(name = NULL, spPr = NULL, trendlineType = "linear", order = NULL, period = NULL, forward = NULL, backward = NULL, intercept = NULL, dispRSqr = NULL, dispEq = NULL, trendlineLbl = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$trendline$Trendline(
    name = name,
    spPr = spPr,
    trendlineType = trendlineType,
    order = order,
    period = period,
    forward = forward,
    backward = backward,
    intercept = intercept,
    dispRSqr = dispRSqr,
    dispEq = dispEq,
    trendlineLbl = trendlineLbl,
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
