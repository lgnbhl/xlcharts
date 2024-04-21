#' @title GeomGuide
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param name name
#' @param fmla fmla
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GeomGuide(name = "name", fmla = "fmla")
#' }
#'
#' @export
GeomGuide <- function(name = NULL, fmla = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$GeomGuide(
    name = name,
    fmla = fmla
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
