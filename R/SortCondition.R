#' @title SortCondition
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param ref ref
#' @param descending descending
#' @param sortBy sortBy
#' @param customList customList
#' @param dxfId dxfId
#' @param iconSet iconSet
#' @param iconId iconId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SortCondition()
#' }
#'
#' @export
SortCondition <- function(ref = NULL, descending = NULL, sortBy = NULL, customList = NULL, dxfId = NULL, iconSet = NULL, iconId = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$SortCondition(
    ref = ref,
    descending = descending,
    sortBy = sortBy,
    customList = customList,
    dxfId = dxfId,
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
