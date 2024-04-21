#' @title FilterColumn
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param colId colId
#' @param hiddenButton hiddenButton
#' @param showButton showButton
#' @param filters filters
#' @param top10 top10
#' @param customFilters customFilters
#' @param dynamicFilter dynamicFilter
#' @param colorFilter colorFilter
#' @param iconFilter iconFilter
#' @param extLst extLst
#' @param blank blank
#' @param vals vals
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FilterColumn(colId = 1L)
#' }
#'
#' @export
FilterColumn <- function(colId = NULL, hiddenButton = FALSE, showButton = TRUE, filters = NULL, top10 = NULL, customFilters = NULL, dynamicFilter = NULL, colorFilter = NULL, iconFilter = NULL, extLst = NULL, blank = NULL, vals = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$FilterColumn(
    colId = colId,
    hiddenButton = hiddenButton,
    showButton = showButton,
    filters = filters,
    top10 = top10,
    customFilters = customFilters,
    dynamicFilter = dynamicFilter,
    colorFilter = colorFilter,
    iconFilter = iconFilter,
    extLst = extLst,
    blank = blank,
    vals = vals
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
