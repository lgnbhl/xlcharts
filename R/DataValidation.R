#' @title DataValidation
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.datavalidation.html}
#'
#' @param type type
#' @param formula1 formula1
#' @param formula2 formula2
#' @param showErrorMessage showErrorMessage
#' @param showInputMessage showInputMessage
#' @param showDropDown showDropDown
#' @param allowBlank allowBlank
#' @param sqref sqref
#' @param promptTitle promptTitle
#' @param errorStyle errorStyle
#' @param error error
#' @param prompt prompt
#' @param errorTitle errorTitle
#' @param imeMode imeMode
#' @param operator operator
#' @param allow_blank allow_blank
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataValidation()
#' }
#'
#' @export
DataValidation <- function(type = NULL, formula1 = NULL, formula2 = NULL, showErrorMessage = FALSE, showInputMessage = FALSE, showDropDown = FALSE, allowBlank = FALSE, sqref = list(), promptTitle = NULL, errorStyle = NULL, error = NULL, prompt = NULL, errorTitle = NULL, imeMode = NULL, operator = NULL, allow_blank = FALSE, ...) {

  py_obj <- openpyxl$worksheet$datavalidation$DataValidation(
    type = type,
    formula1 = formula1,
    formula2 = formula2,
    showErrorMessage = showErrorMessage,
    showInputMessage = showInputMessage,
    showDropDown = showDropDown,
    allowBlank = allowBlank,
    sqref = sqref,
    promptTitle = promptTitle,
    errorStyle = errorStyle,
    error = error,
    prompt = prompt,
    errorTitle = errorTitle,
    imeMode = imeMode,
    operator = operator,
    allow_blank = allow_blank
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
