#' @title Series
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.series.html}
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
#' Series(values = "sheetname!A1:E4")
#' }
#' @export
Series <- function(values, xvalues = NULL, zvalues = NULL, title = NULL, title_from_data = FALSE, ...) {

  py_obj <- openpyxl$chart$Series(
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
