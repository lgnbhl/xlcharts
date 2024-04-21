#' @title GroupShapeProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.properties.html}
#'
#' @param bwMode bwMode
#' @param xfrm xfrm
#' @param scene3d scene3d
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GroupShapeProperties()
#' }
#'
#' @export
GroupShapeProperties <- function(bwMode = NULL, xfrm = NULL, scene3d = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$properties$GroupShapeProperties(
    bwMode = bwMode,
    xfrm = xfrm,
    scene3d = scene3d,
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
