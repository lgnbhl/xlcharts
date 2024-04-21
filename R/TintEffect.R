#' @title TintEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param hue hue
#' @param amt amt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TintEffect()
#' }
#'
#' @export
TintEffect <- function(hue = 0L, amt = 0L, ...) {

  py_obj <- openpyxl$drawing$effect$TintEffect(
    hue = as.integer(hue),
    amt = as.integer(amt)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
