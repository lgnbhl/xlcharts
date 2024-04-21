#' @title ShapeStyle
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param lnRef lnRef
#' @param fillRef fillRef
#' @param effectRef effectRef
#' @param fontRef fontRef
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ShapeStyle(
#' lnRef = StyleMatrixReference(idx = 1L),
#' fillRef = StyleMatrixReference(idx = 1L),
#' effectRef = StyleMatrixReference(idx = 1L),
#' fontRef = FontReference()
#' )
#' }
#'
#' @export
ShapeStyle <- function(lnRef = NULL, fillRef = NULL, effectRef = NULL, fontRef = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$ShapeStyle(
    lnRef = lnRef,
    fillRef = fillRef,
    effectRef = effectRef,
    fontRef = fontRef
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
