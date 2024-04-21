#' @title Camera
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param prst prst
#' @param fov fov
#' @param zoom zoom
#' @param rot rot
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Camera(prst = "perspectiveLeft")
#' }
#'
#' @export
Camera <- function(prst = NULL, fov = NULL, zoom = NULL, rot = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Camera(
    prst = prst,
    fov = fov,
    zoom = zoom,
    rot = rot
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
