#' @title GraphicObject
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.graphic.html}
#'
#' @param graphicData graphicData
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GraphicObject()
#' }
#'
#' @export
GraphicObject <- function(graphicData = NULL, ...) {

  py_obj <- openpyxl$drawing$graphic$GraphicObject(
    graphicData = graphicData
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
