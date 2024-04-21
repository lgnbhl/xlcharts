#' @title LinearShadeProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param ang ang
#' @param scaled scaled
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LinearShadeProperties(ang = 30)
#' }
#' @export
LinearShadeProperties <- function(ang = NULL, scaled = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$LinearShadeProperties(
    ang = ang,
    scaled = scaled
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
