#' @title SeriesAxis
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param tickLblSkip tickLblSkip
#' @param tickMarkSkip tickMarkSkip
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SeriesAxis()
#' }
#' @export
SeriesAxis <- function(tickLblSkip = NULL, tickMarkSkip = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$SeriesAxis(
    tickLblSkip = tickLblSkip,
    tickMarkSkip = tickMarkSkip,
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
