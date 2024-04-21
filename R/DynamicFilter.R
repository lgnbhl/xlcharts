#' @title DynamicFilter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param type type
#' @param val val
#' @param valIso valIso
#' @param maxVal maxVal
#' @param maxValIso maxValIso
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DynamicFilter(type = "thisWeek")
#' }
#'
#' @export
DynamicFilter <- function(type = NULL, val = NULL, valIso = NULL, maxVal = NULL, maxValIso = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$DynamicFilter(
    type = type,
    val = val,
    valIso = valIso,
    maxVal = maxVal,
    maxValIso = maxValIso
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
