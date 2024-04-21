#' @title IconSet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param iconSet iconSet
#' @param showValue showValue
#' @param percent percent
#' @param reverse reverse
#' @param cfvo cfvo
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' first <- FormatObject(type='percent', val=0)
#' second <- FormatObject(type='percent', val=33)
#' third <- FormatObject(type='percent', val=67)
#' iconset <- IconSet(
#'   iconSet = '3TrafficLights1',
#'   cfvo = list(first, second, third)
#' )
#' }
#'
#' @export
IconSet <- function(iconSet = NULL, showValue = NULL, percent = NULL, reverse = NULL, cfvo = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$IconSet(
    iconSet = iconSet,
    showValue = showValue,
    percent = percent,
    reverse = reverse,
    cfvo = cfvo
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
