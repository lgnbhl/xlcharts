#' @title Shape3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param z z
#' @param extrusionH extrusionH
#' @param contourW contourW
#' @param prstMaterial prstMaterial
#' @param bevelT bevelT
#' @param bevelB bevelB
#' @param extrusionClr extrusionClr
#' @param contourClr contourClr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Shape3D()
#' }
#'
#' @export
Shape3D <- function(z = NULL, extrusionH = NULL, contourW = NULL, prstMaterial = NULL, bevelT = NULL, bevelB = NULL, extrusionClr = NULL, contourClr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Shape3D(
    z = z,
    extrusionH = extrusionH,
    contourW = contourW,
    prstMaterial = prstMaterial,
    bevelT = bevelT,
    bevelB = bevelB,
    extrusionClr = extrusionClr,
    contourClr = contourClr,
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
