#' @title NumRef
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param f f
#' @param numCache numCache
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumRef()
#' }
#'
#' @export
NumRef <- function(f = NULL, numCache = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$NumRef(
    f = f,
    numCache = numCache,
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
