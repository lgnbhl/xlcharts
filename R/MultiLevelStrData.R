#' @title MultiLevelStrData
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param ptCount ptCount
#' @param lvl lvl
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' MultiLevelStrData()
#' }
#'
#' @export
MultiLevelStrData <- function(ptCount = NULL, lvl = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$chart$data_source$MultiLevelStrData(
    ptCount = ptCount,
    lvl = lvl,
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
