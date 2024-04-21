#' @title UpDownBars
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.updown_bars.html}
#'
#' @param gapWidth gapWidth
#' @param upBars upBars
#' @param downBars downBars
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' UpDownBars()
#' }
#'
#' @export
UpDownBars <- function(gapWidth = 150L, upBars = NULL, downBars = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$updown_bars$UpDownBars(
    gapWidth = as.integer(gapWidth),
    upBars = upBars,
    downBars = downBars,
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
