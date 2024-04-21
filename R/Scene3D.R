#' @title Scene3D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param camera camera
#' @param lightRig lightRig
#' @param backdrop backdrop
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Scene3D(
#' camera = Camera(prst = "perspectiveLeft"),
#' lightRig = LightRig(rig = "morning", dir = "t")
#' )
#' }
#'
#' @export
Scene3D <- function(camera = NULL, lightRig = NULL, backdrop = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Scene3D(
    camera = camera,
    lightRig = lightRig,
    backdrop = backdrop,
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
