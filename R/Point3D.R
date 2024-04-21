#' @title Point3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param x x
#' @param y y
#' @param z z
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Point3D(x = 1L, y = 1L, z = 1L)
#' }
#'
#' @export
Point3D <- function(x = NULL, y = NULL, z = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Point3D(
    x = x,
    y = y,
    z = z
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
