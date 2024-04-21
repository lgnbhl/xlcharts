#' @title Blip
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param cstate cstate
#' @param embed embed
#' @param link link
#' @param noGrp noGrp
#' @param noSelect noSelect
#' @param noRot noRot
#' @param noChangeAspect noChangeAspect
#' @param noMove noMove
#' @param noResize noResize
#' @param noEditPoints noEditPoints
#' @param noAdjustHandles noAdjustHandles
#' @param noChangeArrowheads noChangeArrowheads
#' @param noChangeShapeType noChangeShapeType
#' @param extLst extLst
#' @param alphaBiLevel alphaBiLevel
#' @param alphaCeiling alphaCeiling
#' @param alphaFloor alphaFloor
#' @param alphaInv alphaInv
#' @param alphaMod alphaMod
#' @param alphaModFix alphaModFix
#' @param alphaRepl alphaRepl
#' @param biLevel biLevel
#' @param blur blur
#' @param clrChange clrChange
#' @param clrRepl clrRepl
#' @param duotone duotone
#' @param fillOverlay fillOverlay
#' @param grayscl grayscl
#' @param hsl hsl
#' @param lum lum
#' @param tint tint
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Blip()
#' }
#'
#' @export
Blip <- function(cstate = NULL, embed = NULL, link = NULL, noGrp = NULL, noSelect = NULL, noRot = NULL, noChangeAspect = NULL, noMove = NULL, noResize = NULL, noEditPoints = NULL, noAdjustHandles = NULL, noChangeArrowheads = NULL, noChangeShapeType = NULL, extLst = NULL, alphaBiLevel = NULL, alphaCeiling = NULL, alphaFloor = NULL, alphaInv = NULL, alphaMod = NULL, alphaModFix = NULL, alphaRepl = NULL, biLevel = NULL, blur = NULL, clrChange = NULL, clrRepl = NULL, duotone = NULL, fillOverlay = NULL, grayscl = NULL, hsl = NULL, lum = NULL, tint = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$Blip(
    cstate = cstate,
    embed = embed,
    link = link,
    noGrp = noGrp,
    noSelect = noSelect,
    noRot = noRot,
    noChangeAspect = noChangeAspect,
    noMove = noMove,
    noResize = noResize,
    noEditPoints = noEditPoints,
    noAdjustHandles = noAdjustHandles,
    noChangeArrowheads = noChangeArrowheads,
    noChangeShapeType = noChangeShapeType,
    extLst = extLst,
    alphaBiLevel = alphaBiLevel,
    alphaCeiling = alphaCeiling,
    alphaFloor = alphaFloor,
    alphaInv = alphaInv,
    alphaMod = alphaMod,
    alphaModFix = alphaModFix,
    alphaRepl = alphaRepl,
    biLevel = biLevel,
    blur = blur,
    clrChange = clrChange,
    clrRepl = clrRepl,
    duotone = duotone,
    fillOverlay = fillOverlay,
    grayscl = grayscl,
    hsl = hsl,
    lum = lum,
    tint = tint
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
