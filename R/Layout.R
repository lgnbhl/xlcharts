#' @title Layout
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.layout.html}
#'
#' @param manualLayout manualLayout
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Layout()
#' }
#' @export
Layout <- function(manualLayout = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$axis$Layout(
    manualLayout = manualLayout,
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
