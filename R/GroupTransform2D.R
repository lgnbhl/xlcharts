#' @title GroupTransform2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param rot rot
#' @param flipH flipH
#' @param flipV flipV
#' @param off off
#' @param ext ext
#' @param chOff chOff
#' @param chExt chExt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GroupTransform2D()
#' }
#'
#' @export
GroupTransform2D <- function(rot = 0L, flipH = NULL, flipV = NULL, off = NULL, ext = NULL, chOff = NULL, chExt = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$GroupTransform2D(
    rot = as.integer(rot),
    flipH = flipH,
    flipV = flipV,
    off = off,
    ext = ext,
    chOff = chOff,
    chExt = chExt
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
