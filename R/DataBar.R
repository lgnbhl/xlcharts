#' @title DataBar
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param minLength minLength
#' @param maxLength maxLength
#' @param showValue showValue
#' @param cfvo cfvo
#' @param color color
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' first <- FormatObject(type='min')
#' second <- FormatObject(type='max')
#' DataBar(cfvo = list(first, second), color = "638EC6")
#' }
#'
#' @export
DataBar <- function(minLength = NULL, maxLength = NULL, showValue = NULL, cfvo = NULL, color = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$DataBar(
    minLength = minLength,
    maxLength = maxLength,
    showValue = showValue,
    cfvo = cfvo,
    color = color
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
