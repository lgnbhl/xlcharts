#' @title IconSetRule
#'
#' @description Convenience function for creating icon set rules
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param icon_style icon_style
#' @param type type
#' @param values values
#' @param showValue showValue
#' @param percent percent
#' @param reverse reverse
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' IconSetRule('5Arrows', 'percent', list(10, 20, 30, 40, 50),
#' showValue=NULL, percent=NULL, reverse=NULL)
#' }
#' @export
IconSetRule <- function(icon_style = NULL, type = NULL, values = NULL, showValue = NULL, percent = NULL, reverse = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$IconSetRule(
    icon_style = icon_style,
    type = type,
    values = values,
    showValue = showValue,
    percent = percent,
    reverse = reverse
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
