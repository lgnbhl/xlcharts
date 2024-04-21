#' @title DataLabel
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.label.html}
#'
#' @param idx idx
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataLabel()
#' }
#'
#' @export
DataLabel <- function(idx = 0L, ...) {

  py_obj <- openpyxl$chart$label$DataLabel(
    idx = as.integer(idx)
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
