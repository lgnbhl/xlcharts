#' @title GraphicFrameLocking
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.graphic.html}
#'
#' @param noGrp noGrp
#' @param noDrilldown noDrilldown
#' @param noSelect noSelect
#' @param noChangeAspect noChangeAspect
#' @param noMove noMove
#' @param noResize noResize
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GraphicFrameLocking()
#' }
#'
#' @export
GraphicFrameLocking <- function(noGrp = NULL, noDrilldown = NULL, noSelect = NULL, noChangeAspect = NULL, noMove = NULL, noResize = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$graphic$GraphicFrameLocking(
    noGrp = noGrp,
    noDrilldown = noDrilldown,
    noSelect = noSelect,
    noChangeAspect = noChangeAspect,
    noMove = noMove,
    noResize = noResize,
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
