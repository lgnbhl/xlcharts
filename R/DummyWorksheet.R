#' @title DummyWorksheet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.reference.html}
#'
#' @param title title
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DummyWorksheet(title = "title")
#' }
#'
#' @export
DummyWorksheet <- function(title, ...) {

  py_obj <- openpyxl$chart$reference$DummyWorksheet(
    title = title
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
