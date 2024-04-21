#' @title BandFormatList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.surface_chart.html}
#'
#' @param bandFmt bandFmt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BandFormatList()
#' }
#'
#' @export
BandFormatList <- function(bandFmt = list(), ...) {

  py_obj <- openpyxl$chart$surface_chart$BandFormatList(
    bandFmt = bandFmt
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
