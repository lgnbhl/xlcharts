#' @title GradientFillProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param flip flip
#' @param rotWithShape rotWithShape
#' @param gsLst gsLst
#' @param lin lin
#' @param path path
#' @param tileRect tileRect
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GradientFillProperties()
#' }
#'
#' @export
GradientFillProperties <- function(flip = NULL, rotWithShape = NULL, gsLst = list(), lin = NULL, path = NULL, tileRect = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$GradientFillProperties(
    flip = flip,
    rotWithShape = rotWithShape,
    gsLst = gsLst,
    lin = lin,
    path = path,
    tileRect = tileRect
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
