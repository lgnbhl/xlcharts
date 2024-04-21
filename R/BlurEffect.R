#' @title BlurEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param rad rad
#' @param grow grow
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' BlurEffect(rad = 0.5)
#' }
#'
#' @export
BlurEffect <- function(rad = NULL, grow = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$BlurEffect(
    rad = rad,
    grow = grow
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
