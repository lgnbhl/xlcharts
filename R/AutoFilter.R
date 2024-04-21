#' @title AutoFilter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param ref ref
#' @param filterColumn filterColumn
#' @param sortState sortState
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AutoFilter()
#' }
#'
#' @export
AutoFilter <- function(ref = NULL, filterColumn = list(), sortState = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$AutoFilter(
    ref = ref,
    filterColumn = filterColumn,
    sortState = sortState,
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
