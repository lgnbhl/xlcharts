#' @title GroupLocking
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.properties.html}
#'
#' @param noGrp noGrp
#' @param noUngrp noUngrp
#' @param noSelect noSelect
#' @param noRot noRot
#' @param noChangeAspect noChangeAspect
#' @param noChangeArrowheads noChangeArrowheads
#' @param noMove noMove
#' @param noResize noResize
#' @param noEditPoints noEditPoints
#' @param noAdjustHandles noAdjustHandles
#' @param noChangeShapeType noChangeShapeType
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GroupLocking()
#' }
#'
#' @export
GroupLocking <- function(noGrp = NULL, noUngrp = NULL, noSelect = NULL, noRot = NULL, noChangeAspect = NULL, noChangeArrowheads = NULL, noMove = NULL, noResize = NULL, noEditPoints = NULL, noAdjustHandles = NULL, noChangeShapeType = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$properties$GroupLocking(
    noGrp = noGrp,
    noUngrp = noUngrp,
    noSelect = noSelect,
    noRot = noRot,
    noChangeAspect = noChangeAspect,
    noChangeArrowheads = noChangeArrowheads,
    noMove = noMove,
    noResize = noResize,
    noEditPoints = noEditPoints,
    noAdjustHandles = noAdjustHandles,
    noChangeShapeType = noChangeShapeType,
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
