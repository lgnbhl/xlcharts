#' @title InputCells
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.scenario.html}
#'
#' @param r r
#' @param deleted deleted
#' @param undone undone
#' @param val val
#' @param numFmtId numFmtId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' InputCells(r = "r", val = "val")
#' }
#' @export
InputCells <- function(r = NULL, deleted = FALSE, undone = FALSE, val = NULL, numFmtId = NULL, ...) {

  py_obj <- openpyxl$worksheet$scenario$InputCells(
    r = r,
    deleted = deleted,
    undone = undone,
    val = val,
    numFmtId = numFmtId
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
