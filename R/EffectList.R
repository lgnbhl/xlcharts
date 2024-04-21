#' @title EffectList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param blur blur
#' @param fillOverlay fillOverlay
#' @param glow glow
#' @param innerShdw innerShdw
#' @param outerShdw outerShdw
#' @param prstShdw prstShdw
#' @param reflection reflection
#' @param softEdge softEdge
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' EffectList()
#' }
#'
#' @export
EffectList <- function(blur = NULL, fillOverlay = NULL, glow = NULL, innerShdw = NULL, outerShdw = NULL, prstShdw = NULL, reflection = NULL, softEdge = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$EffectList(
    blur = blur,
    fillOverlay = fillOverlay,
    glow = glow,
    innerShdw = innerShdw,
    outerShdw = outerShdw,
    prstShdw = prstShdw,
    reflection = reflection,
    softEdge = softEdge
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
