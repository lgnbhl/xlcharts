#' @title PositiveSize2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param cx cx
#' @param cy cy
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PositiveSize2D(cx = 1L, cy = 1L)
#' }
#'
#' @export
PositiveSize2D <- function(cx = NULL, cy = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$PositiveSize2D(
    cx = cx,
    cy = cy
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
