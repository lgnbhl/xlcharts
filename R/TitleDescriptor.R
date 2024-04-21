#' @title TitleDescriptor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.title.html}
#'
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TitleDescriptor()
#' }
#'
#' @export
TitleDescriptor <- function(...) {

  py_obj <- openpyxl$chart$title$TitleDescriptor()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
