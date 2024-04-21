#' @title NestedGapAmount
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.descriptors.html}
#'
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NestedGapAmount()
#' }
#'
#' @export
NestedGapAmount <- function(...) {

  py_obj <- openpyxl$chart$descriptors$NestedGapAmount()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
