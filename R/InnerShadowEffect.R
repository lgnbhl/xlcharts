#' @title InnerShadowEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param blurRad blurRad
#' @param dist dist
#' @param dir dir
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' InnerShadowEffect(blurRad = 1, dist = 1, dir = 1)
#' }
#' @export
InnerShadowEffect <- function(blurRad = NULL, dist = NULL, dir = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$InnerShadowEffect(
    blurRad = blurRad,
    dist = dist,
    dir = dir
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
