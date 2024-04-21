#' @title NonVisualGraphicFrameProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.graphic.html}
#'
#' @param graphicFrameLocks graphicFrameLocks
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NonVisualGraphicFrameProperties()
#' }
#'
#' @export
NonVisualGraphicFrameProperties <- function(graphicFrameLocks = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$graphic$NonVisualGraphicFrameProperties(
    graphicFrameLocks = graphicFrameLocks,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
