#' @title SeriesLabel
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.series.html}
#'
#' @param strRef strRef
#' @param v v
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SeriesLabel()
#' }
#' @export
SeriesLabel <- function(strRef = NULL, v = NULL, ...) {

  py_obj <- openpyxl$chart$series$SeriesLabel(
    strRef = strRef,
    v = v
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
