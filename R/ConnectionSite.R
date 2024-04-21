#' @title ConnectionSite
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param ang ang
#' @param pos pos
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ConnectionSite(ang = 1.5, pos = AdjPoint2D(x = 1L, y = 2L))
#' }
#'
#' @export
ConnectionSite <- function(ang = NULL, pos = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$ConnectionSite(
    ang = ang,
    pos = pos
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
