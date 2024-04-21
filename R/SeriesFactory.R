#' @title SeriesFactory
#'
#' @description Convenience Factory for creating chart data series.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.series_factory.html}
#'
#' @param values values
#' @param xvalues xvalues
#' @param zvalues zvalues
#' @param title title
#' @param title_from_data title_from_data
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SeriesFactory(values = "sheetname!A1:E4")
#' }
#' @export
SeriesFactory <- function(values, xvalues = NULL, zvalues = NULL, title = NULL, title_from_data = FALSE, ...) {

  py_obj <- openpyxl$chart$series_factory$SeriesFactory(
    values = values,
    xvalues = xvalues,
    zvalues = zvalues,
    title = title,
    title_from_data = title_from_data
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
