#' @title PageSetupProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.properties.html}
#'
#' @param autoPageBreaks autoPageBreaks
#' @param fitToPage fitToPage
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PageSetupProperties()
#' }
#'
#' @export
PageSetupProperties <- function(autoPageBreaks = NULL, fitToPage = NULL, ...) {

  py_obj <- openpyxl$worksheet$properties$PageSetupProperties(
    autoPageBreaks = autoPageBreaks,
    fitToPage = fitToPage
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
