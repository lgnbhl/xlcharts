#' @title Vector3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param dx dx
#' @param dy dy
#' @param dz dz
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Vector3D(dx = 1L, dy = 1L, dz = 1L)
#' }
#'
#' @export
Vector3D <- function(dx = NULL, dy = NULL, dz = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Vector3D(
    dx = dx,
    dy = dy,
    dz = dz
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
