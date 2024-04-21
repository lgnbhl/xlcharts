#' @title BlipFillProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param dpi dpi
#' @param rotWithShape rotWithShape
#' @param blip blip
#' @param tile tile
#' @param srcRect srcRect
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BlipFillProperties()
#' }
#'
#' @export
BlipFillProperties <- function(dpi = NULL, rotWithShape = NULL, blip = NULL, tile = NULL, srcRect = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$BlipFillProperties(
    dpi = dpi,
    rotWithShape = rotWithShape,
    blip = blip,
    tile = tile,
    srcRect = srcRect
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
