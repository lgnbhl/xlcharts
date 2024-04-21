#' @title IconFilter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param iconSet iconSet
#' @param iconId iconId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' IconFilter(iconSet = "3TrafficLights1")
#' }
#'
#' @export
IconFilter <- function(iconSet = NULL, iconId = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$IconFilter(
    iconSet = iconSet,
    iconId = iconId
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
