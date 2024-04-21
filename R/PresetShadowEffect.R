#' @title PresetShadowEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param prst prst
#' @param dist dist
#' @param dir dir
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PresetShadowEffect(prst = "shdw20", dist = 1L, dir = 1L)
#' }
#'
#' @export
PresetShadowEffect <- function(prst = NULL, dist = NULL, dir = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$PresetShadowEffect(
    prst = prst,
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
