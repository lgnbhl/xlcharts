#' @title ChartsheetProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.properties.html}
#'
#' @param published published
#' @param codeName codeName
#' @param tabColor tabColor
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartsheetProperties()
#' }
#'
#' @export
ChartsheetProperties <- function(published = NULL, codeName = NULL, tabColor = NULL, ...) {

  py_obj <- openpyxl$chartsheet$properties$ChartsheetProperties(
    published = published,
    codeName = codeName,
    tabColor = tabColor
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
