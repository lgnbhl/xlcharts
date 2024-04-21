#' @title ConnectorLocking
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.connector.html}
#'
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ConnectorLocking()
#' }
#'
#' @export
ConnectorLocking <- function(extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$connector$ConnectorLocking(
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
