#' @title TextAxis
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param auto auto
#' @param lblAlgn lblAlgn
#' @param lblOffset lblOffset
#' @param tickLblSkip tickLblSkip
#' @param tickMarkSkip tickMarkSkip
#' @param noMultiLvlLbl noMultiLvlLbl
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TextAxis()
#' }
#'
#' @export
TextAxis <- function(auto = NULL, lblAlgn = NULL, lblOffset = 100L, tickLblSkip = NULL, tickMarkSkip = NULL, noMultiLvlLbl = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$TextAxis(
    auto = auto,
    lblAlgn = lblAlgn,
    lblOffset = as.integer(lblOffset),
    tickLblSkip = tickLblSkip,
    tickMarkSkip = tickMarkSkip,
    noMultiLvlLbl = noMultiLvlLbl,
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
