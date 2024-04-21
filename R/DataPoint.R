#' @title DataPoint
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.marker.html}
#'
#' @param idx idx
#' @param invertIfNegative invertIfNegative
#' @param marker marker
#' @param bubble3D bubble3D
#' @param explosion explosion
#' @param spPr spPr
#' @param pictureOptions pictureOptions
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataPoint(idx = 1L)
#' }
#'
#' @export
DataPoint <- function(idx = NULL, invertIfNegative = NULL, marker = NULL, bubble3D = NULL, explosion = NULL, spPr = NULL, pictureOptions = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$chart$marker$DataPoint(
    idx = idx,
    invertIfNegative = invertIfNegative,
    marker = marker,
    bubble3D = bubble3D,
    explosion = explosion,
    spPr = spPr,
    pictureOptions = pictureOptions,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
