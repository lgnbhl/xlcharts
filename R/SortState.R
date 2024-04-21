#' @title SortState
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param columnSort columnSort
#' @param caseSensitive caseSensitive
#' @param sortMethod sortMethod
#' @param ref ref
#' @param sortCondition sortCondition
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SortState()
#' }
#'
#' @export
SortState <- function(columnSort = NULL, caseSensitive = NULL, sortMethod = NULL, ref = NULL, sortCondition = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$SortState(
    columnSort = columnSort,
    caseSensitive = caseSensitive,
    sortMethod = sortMethod,
    ref = ref,
    sortCondition = sortCondition,
    extLst = extLst
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
