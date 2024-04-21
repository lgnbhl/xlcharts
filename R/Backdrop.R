#' @title Backdrop
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param anchor anchor
#' @param norm norm
#' @param up up
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Backdrop(
#'   anchor = Point3D(x = 1L, y = 2L, z = 3L),
#'   norm = Vector3D(dx = 1L, dy = 2L, dz = 3L),
#'   up = Vector3D(dx = 1L, dy = 2L, dz = 3L)
#' )
#' }
#'
#' @export
Backdrop <- function(anchor = NULL, norm = NULL, up = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Backdrop(
    anchor = anchor,
    norm = norm,
    up = up,
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
