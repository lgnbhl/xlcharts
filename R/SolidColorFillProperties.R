#' @title SolidColorFillProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
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
#' SolidColorFillProperties()
#' }
#'
#' @export
SolidColorFillProperties <- function(scrgbClr = NULL, srgbClr = NULL, hslClr = NULL, sysClr = NULL, schemeClr = NULL, prstClr = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$SolidColorFillProperties(
    scrgbClr = scrgbClr,
    srgbClr = srgbClr,
    hslClr = hslClr,
    sysClr = sysClr,
    schemeClr = schemeClr,
    prstClr = prstClr
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
