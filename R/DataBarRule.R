#' @title DataBarRule
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param start_type start_type
#' @param start_value start_value
#' @param end_type end_type
#' @param end_value end_value
#' @param color color
#' @param showValue showValue
#' @param minLength minLength
#' @param maxLength maxLength
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataBarRule(start_type='percentile', start_value=10, end_type='percentile', end_value='90',
#' color="FF638EC6", showValue= NULL, minLength=NULL, maxLength=NULL)
#' }
#'
#' @export
DataBarRule <- function(start_type = NULL, start_value = NULL, end_type = NULL, end_value = NULL, color = NULL, showValue = NULL, minLength = NULL, maxLength = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$DataBarRule(
    start_type = start_type,
    start_value = start_value,
    end_type = end_type,
    end_value = end_value,
    color = color,
    showValue = showValue,
    minLength = minLength,
    maxLength = maxLength
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
