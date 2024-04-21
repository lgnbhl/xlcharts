#' @title DataLabelList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.label.html}
#'
#' @param dLbl dLbl
#' @param delete delete
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataLabelList()
#' }
#'
#' @export
DataLabelList <- function(dLbl = list(), delete = NULL, ...) {

  py_obj <- openpyxl$chart$label$DataLabelList(
    dLbl = dLbl,
    delete = delete
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
