#' @title GraphicalProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.shapes.html}
#'
#' @details This element specifies the formatting for the parent chart element. The
#' custGeom, prstGeom, scene3d, and xfrm elements are not supported. The
#' bwMode attribute is not supported. This doesn't leave much. And the element is used in different places.
#'
#' @param bwMode bwMode
#' @param xfrm xfrm
#' @param noFill noFill
#' @param solidFill solidFill
#' @param gradFill gradFill
#' @param pattFill pattFill
#' @param ln ln
#' @param scene3d scene3d
#' @param custGeom custGeom
#' @param prstGeom prstGeom
#' @param sp3d sp3d
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GraphicalProperties()
#' }
#'
#' @export
GraphicalProperties <- function(bwMode = NULL, xfrm = NULL, noFill = NULL, solidFill = NULL, gradFill = NULL, pattFill = NULL, ln = NULL, scene3d = NULL, custGeom = NULL, prstGeom = NULL, sp3d = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$shapes$GraphicalProperties(
    bwMode = bwMode,
    xfrm = xfrm,
    noFill = noFill,
    solidFill = solidFill,
    gradFill = gradFill,
    pattFill = pattFill,
    ln = ln,
    scene3d = scene3d,
    custGeom = custGeom,
    prstGeom = prstGeom,
    sp3d = sp3d,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
