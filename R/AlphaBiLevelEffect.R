#' @title AlphaBiLevelEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param thresh thresh
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AlphaBiLevelEffect(thresh = 1L)
#' }
#'
#' @export
AlphaBiLevelEffect <- function(thresh = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$AlphaBiLevelEffect(
    thresh = thresh
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
