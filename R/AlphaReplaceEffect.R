#' @title AlphaReplaceEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param a a
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AlphaReplaceEffect(a = 1L)
#' }
#'
#' @export
AlphaReplaceEffect <- function(a = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$AlphaReplaceEffect(
    a = a
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
