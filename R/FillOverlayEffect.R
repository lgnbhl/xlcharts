#' @title FillOverlayEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param blend blend
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FillOverlayEffect(blend = "darken")
#' }
#'
#' @export
FillOverlayEffect <- function(blend = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$FillOverlayEffect(
    blend = blend
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
