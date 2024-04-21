#' @title SystemColor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.colors.html}
#'
#' @param val val
#' @param lastClr lastClr
#' @param tint tint
#' @param shade shade
#' @param comp comp
#' @param inv inv
#' @param gray gray
#' @param alpha alpha
#' @param alphaOff alphaOff
#' @param alphaMod alphaMod
#' @param hue hue
#' @param hueOff hueOff
#' @param hueMod hueMod
#' @param sat sat
#' @param satOff satOff
#' @param satMod satMod
#' @param lum lum
#' @param lumOff lumOff
#' @param lumMod lumMod
#' @param red red
#' @param redOff redOff
#' @param redMod redMod
#' @param green green
#' @param greenOff greenOff
#' @param greenMod greenMod
#' @param blue blue
#' @param blueOff blueOff
#' @param blueMod blueMod
#' @param gamma gamma
#' @param invGamma invGamma
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SystemColor()
#' }
#'
#' @export
SystemColor <- function(val = "windowText", lastClr = NULL, tint = NULL, shade = NULL, comp = NULL, inv = NULL, gray = NULL, alpha = NULL, alphaOff = NULL, alphaMod = NULL, hue = NULL, hueOff = NULL, hueMod = NULL, sat = NULL, satOff = NULL, satMod = NULL, lum = NULL, lumOff = NULL, lumMod = NULL, red = NULL, redOff = NULL, redMod = NULL, green = NULL, greenOff = NULL, greenMod = NULL, blue = NULL, blueOff = NULL, blueMod = NULL, gamma = NULL, invGamma = NULL, ...) {

  py_obj <- openpyxl$drawing$colors$SystemColor(
    val = val,
    lastClr = lastClr,
    tint = tint,
    shade = shade,
    comp = comp,
    inv = inv,
    gray = gray,
    alpha = alpha,
    alphaOff = alphaOff,
    alphaMod = alphaMod,
    hue = hue,
    hueOff = hueOff,
    hueMod = hueMod,
    sat = sat,
    satOff = satOff,
    satMod = satMod,
    lum = lum,
    lumOff = lumOff,
    lumMod = lumMod,
    red = red,
    redOff = redOff,
    redMod = redMod,
    green = green,
    greenOff = greenOff,
    greenMod = greenMod,
    blue = blue,
    blueOff = blueOff,
    blueMod = blueMod,
    gamma = gamma,
    invGamma = invGamma
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
