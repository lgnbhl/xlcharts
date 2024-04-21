#' @title AxDataSource
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param numRef numRef
#' @param numLit numLit
#' @param strRef strRef
#' @param strLit strLit
#' @param multiLvlStrRef multiLvlStrRef
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AxDataSource(numRef = NumRef())
#' }
#'
#' @export
AxDataSource <- function(numRef = NULL, numLit = NULL, strRef = NULL, strLit = NULL, multiLvlStrRef = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$AxDataSource(
    numRef = numRef,
    numLit = numLit,
    strRef = strRef,
    strLit = strLit,
    multiLvlStrRef = multiLvlStrRef
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
