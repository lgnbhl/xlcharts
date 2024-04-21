#' @title NumData
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param formatCode formatCode
#' @param ptCount ptCount
#' @param pt pt
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumData()
#' }
#'
#' @export
NumData <- function(formatCode = NULL, ptCount = NULL, pt = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$NumData(
    formatCode = formatCode,
    ptCount = ptCount,
    pt = pt,
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
