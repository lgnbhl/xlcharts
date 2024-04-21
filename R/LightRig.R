#' @title LightRig
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param rig rig
#' @param dir dir
#' @param rot rot
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LightRig(rig = "morning", dir = "t")
#' }
#' @export
LightRig <- function(rig = NULL, dir = NULL, rot = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$LightRig(
    rig = rig,
    dir = dir,
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
