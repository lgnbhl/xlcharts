#' @title BandFormat
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.surface_chart.html}
#'
#' @param idx idx
#' @param spPr spPr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BandFormat()
#' }
#'
#' @export
BandFormat <- function(idx = 0L, spPr = NULL, ...) {

  py_obj <- openpyxl$chart$surface_chart$BandFormat(
    idx = as.integer(idx),
    spPr = spPr
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
