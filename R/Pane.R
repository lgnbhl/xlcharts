#' @title Pane
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.views.html}
#'
#' @param xSplit xSplit
#' @param ySplit ySplit
#' @param topLeftCell topLeftCell
#' @param activePane activePane
#' @param state state
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Pane()
#' }
#'
#' @export
Pane <- function(xSplit = NULL, ySplit = NULL, topLeftCell = NULL, activePane = "topLeft", state = "split", ...) {

  py_obj <- openpyxl$worksheet$views$Pane(
    xSplit = xSplit,
    ySplit = ySplit,
    topLeftCell = topLeftCell,
    activePane = activePane,
    state = state
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
