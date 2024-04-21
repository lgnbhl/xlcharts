#' @title Selection
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.views.html}
#'
#' @param pane pane
#' @param activeCell activeCell
#' @param activeCellId activeCellId
#' @param sqref sqref
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Selection()
#' }
#' @export
Selection <- function(pane = NULL, activeCell = "A1", activeCellId = NULL, sqref = "A1", ...) {

  py_obj <- openpyxl$worksheet$views$Selection(
    pane = pane,
    activeCell = activeCell,
    activeCellId = activeCellId,
    sqref = sqref
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
