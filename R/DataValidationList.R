#' @title DataValidationList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.datavalidation.html}
#'
#' @param disablePrompts disablePrompts
#' @param xWindow xWindow
#' @param yWindow yWindow
#' @param count count
#' @param dataValidation dataValidation
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataValidationList()
#' }
#'
#' @export
DataValidationList <- function(disablePrompts = NULL, xWindow = NULL, yWindow = NULL, count = NULL, dataValidation = list(), ...) {

  py_obj <- openpyxl$worksheet$datavalidation$DataValidationList(
    disablePrompts = disablePrompts,
    xWindow = xWindow,
    yWindow = yWindow,
    count = count,
    dataValidation = dataValidation
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
