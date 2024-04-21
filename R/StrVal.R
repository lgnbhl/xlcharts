#' @title StrVal
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param idx idx
#' @param v v
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' StrVal()
#' }
#'
#' @export
StrVal <- function(idx = 0L, v = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$StrVal(
    idx = as.integer(idx),
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
