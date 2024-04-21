#' @title LuminanceEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param bright bright
#' @param contrast contrast
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LuminanceEffect()
#' }
#'
#' @export
LuminanceEffect <- function(bright = 0L, contrast = 0L, ...) {

  py_obj <- openpyxl$drawing$effect$LuminanceEffect(
    bright = as.integer(bright),
    contrast = as.integer(contrast)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
