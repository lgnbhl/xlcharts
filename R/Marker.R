#' @title Marker
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.marker.html}
#'
#' @param symbol symbol
#' @param size size
#' @param spPr spPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Marker()
#' }
#'
#' @export
Marker <- function(symbol = NULL, size = NULL, spPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$marker$Marker(
    symbol = symbol,
    size = size,
    spPr = spPr,
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
