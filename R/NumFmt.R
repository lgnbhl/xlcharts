#' @title NumFmt
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param formatCode formatCode
#' @param sourceLinked sourceLinked
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumFmt(formatCode = "formatCode")
#' }
#'
#' @export
NumFmt <- function(formatCode = NULL, sourceLinked = FALSE, ...) {

  py_obj <- openpyxl$chart$data_source$NumFmt(
    formatCode = formatCode,
    sourceLinked = sourceLinked
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
