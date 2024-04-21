#' @title GraphicData
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.graphic.html}
#'
#' @param uri uri
#' @param chart chart
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GraphicData()
#' }
#'
#' @export
GraphicData <- function(uri = "http://schemas.openxmlformats.org/drawingml/2006/chart", chart = NULL, ...) {

  py_obj <- openpyxl$drawing$graphic$GraphicData(
    uri = uri,
    chart = chart
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
