#' @title Legend
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.legend.html}
#'
#' @param legendPos legendPos
#' @param legendEntry legendEntry
#' @param layout layout
#' @param overlay overlay
#' @param spPr spPr
#' @param txPr txPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Legend()
#' }
#' @export
Legend <- function(legendPos = "r", legendEntry = list(), layout = NULL, overlay = NULL, spPr = NULL, txPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$legend$Legend(
    legendPos = legendPos,
    legendEntry = legendEntry,
    layout = layout,
    overlay = overlay,
    spPr = spPr,
    txPr = txPr,
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
