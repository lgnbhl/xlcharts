#' @title NumDataSource
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param numRef numRef
#' @param numLit numLit
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumDataSource()
#' }
#'
#' @export
NumDataSource <- function(numRef = NULL, numLit = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$NumDataSource(
    numRef = numRef,
    numLit = numLit
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
