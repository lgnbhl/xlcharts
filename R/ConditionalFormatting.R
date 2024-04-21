#' @title ConditionalFormatting
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.formatting.html}
#'
#' @param sqref sqref
#' @param pivot pivot
#' @param cfRule cfRule
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ConditionalFormatting()
#' }
#'
#' @export
ConditionalFormatting <- function(sqref = list(), pivot = NULL, cfRule = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$formatting$formatting$ConditionalFormatting(
    sqref = sqref,
    pivot = pivot,
    cfRule = cfRule,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
