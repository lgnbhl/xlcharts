#' @title PathShadeProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param path path
#' @param fillToRect fillToRect
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PathShadeProperties(path = "circle")
#' }
#'
#' @export
PathShadeProperties <- function(path = NULL, fillToRect = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$PathShadeProperties(
    path = path,
    fillToRect = fillToRect
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
