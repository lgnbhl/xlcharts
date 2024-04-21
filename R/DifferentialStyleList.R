#' @title DifferentialStyleList
#'
#' @description Dedupable container for differential styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.differential.html}
#'
#' @param dxf dxf
#' @param count count
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DifferentialStyleList()
#' }
#'
#' @export
DifferentialStyleList <- function(dxf = list(), count = NULL, ...) {

  py_obj <- openpyxl$styles$differential$DifferentialStyleList(
    dxf = dxf,
    count = count
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
