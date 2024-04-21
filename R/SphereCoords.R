#' @title SphereCoords
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param lat lat
#' @param lon lon
#' @param rev rev
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SphereCoords(lat = 1L, lon = 1L, rev = 1L)
#' }
#'
#' @export
SphereCoords <- function(lat = NULL, lon = NULL, rev = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$SphereCoords(
    lat = lat,
    lon = lon,
    rev = rev
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
