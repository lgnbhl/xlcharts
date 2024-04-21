#' @title Path2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param w w
#' @param h h
#' @param fill fill
#' @param stroke stroke
#' @param extrusionOk extrusionOk
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Path2D(w = 1L, h = 1L)
#' }
#'
#' @export
Path2D <- function(w = NULL, h = NULL, fill = NULL, stroke = NULL, extrusionOk = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Path2D(
    w = w,
    h = h,
    fill = fill,
    stroke = stroke,
    extrusionOk = extrusionOk
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
