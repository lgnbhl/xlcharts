#' @title StrRef
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param f f
#' @param strCache strCache
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' StrRef()
#' }
#'
#' @export
StrRef <- function(f = NULL, strCache = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$StrRef(
    f = f,
    strCache = strCache,
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
