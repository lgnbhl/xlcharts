#' @title CustomGeometry2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param avLst avLst
#' @param gdLst gdLst
#' @param ahLst ahLst
#' @param cxnLst cxnLst
#' @param rect rect
#' @param pathLst pathLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomGeometry2D(pathLst = Path2DList())
#' }
#'
#' @export
CustomGeometry2D <- function(avLst = NULL, gdLst = NULL, ahLst = NULL, cxnLst = NULL, rect = NULL, pathLst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$CustomGeometry2D(
    avLst = avLst,
    gdLst = gdLst,
    ahLst = ahLst,
    cxnLst = cxnLst,
    rect = rect,
    pathLst = pathLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
