#' @title ColorScaleRule
#'
#' @description Backwards compatibility
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param start_type start_type
#' @param start_value start_value
#' @param start_color start_color
#' @param mid_type mid_type
#' @param mid_value mid_value
#' @param mid_color mid_color
#' @param end_type end_type
#' @param end_value end_value
#' @param end_color end_color
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColorScaleRule(
#' start_type='percentile', start_value=10, start_color='FFAA0000',
#' mid_type='percentile', mid_value=50, mid_color='FF0000AA',
#' end_type='percentile', end_value=90, end_color='FF00AA00')
#' }
#'
#' @export
ColorScaleRule <- function(start_type = NULL, start_value = NULL, start_color = NULL, mid_type = NULL, mid_value = NULL, mid_color = NULL, end_type = NULL, end_value = NULL, end_color = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$ColorScaleRule(
    start_type = start_type,
    start_value = start_value,
    start_color = start_color,
    mid_type = mid_type,
    mid_value = mid_value,
    mid_color = mid_color,
    end_type = end_type,
    end_value = end_value,
    end_color = end_color
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
