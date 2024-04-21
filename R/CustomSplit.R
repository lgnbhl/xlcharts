#' @title CustomSplit
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.pie_chart.html}
#'
#' @param secondPiePt secondPiePt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomSplit()
#' }
#'
#' @export
CustomSplit <- function(secondPiePt = list(), ...) {

  py_obj <- openpyxl$chart$pie_chart$CustomSplit(
    secondPiePt = secondPiePt
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
