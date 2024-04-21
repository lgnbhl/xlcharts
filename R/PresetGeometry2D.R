#' @title PresetGeometry2D
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param prst prst
#' @param avLst avLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PresetGeometry2D(prst = "diamond")
#' }
#'
#' @export
PresetGeometry2D <- function(prst = NULL, avLst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$PresetGeometry2D(
    prst = prst,
    avLst = avLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
