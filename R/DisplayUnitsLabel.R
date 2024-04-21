#' @title DisplayUnitsLabel
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.axis.html}
#'
#' @param layout layout
#' @param tx tx
#' @param spPr spPr
#' @param txPr txPr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DisplayUnitsLabel()
#' }
#'
#' @export
DisplayUnitsLabel <- function(layout = NULL, tx = NULL, spPr = NULL, txPr = NULL, ...) {

  py_obj <- openpyxl$chart$axis$DisplayUnitsLabel(
    layout = layout,
    tx = tx,
    spPr = spPr,
    txPr = txPr
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
