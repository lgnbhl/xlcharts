#' @title NonVisualConnectorProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.connector.html}
#'
#' @param cxnSpLocks cxnSpLocks
#' @param stCxn stCxn
#' @param endCxn endCxn
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NonVisualConnectorProperties()
#' }
#'
#' @export
NonVisualConnectorProperties <- function(cxnSpLocks = NULL, stCxn = NULL, endCxn = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$connector$NonVisualConnectorProperties(
    cxnSpLocks = cxnSpLocks,
    stCxn = stCxn,
    endCxn = endCxn,
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
