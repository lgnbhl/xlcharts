#' @title XDRPoint2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.xdr.html}
#'
#' @param x x
#' @param y y
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' XDRPoint2D(x = 1L, y = 1L)
#' }
#'
#' @export
XDRPoint2D <- function(x = NULL, y = NULL, ...) {

  py_obj <- openpyxl$drawing$xdr$XDRPoint2D(
    x = x,
    y = y
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
