#' @title ColorChoice
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.colors.html}
#'
#' @param scrgbClr scrgbClr
#' @param srgbClr srgbClr
#' @param hslClr hslClr
#' @param sysClr sysClr
#' @param schemeClr schemeClr
#' @param prstClr prstClr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColorChoice()
#' }
#'
#' @export
ColorChoice <- function(scrgbClr = NULL, srgbClr = NULL, hslClr = NULL, sysClr = NULL, schemeClr = NULL, prstClr = NULL, ...) {

  py_obj <- openpyxl$drawing$colors$ColorChoice(
    scrgbClr = scrgbClr,
    srgbClr = srgbClr,
    hslClr = hslClr,
    sysClr = sysClr,
    schemeClr = schemeClr,
    prstClr = prstClr
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
