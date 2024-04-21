#' @title AlphaModulateFixedEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param amt amt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AlphaModulateFixedEffect(amt = 1L)
#' }
#'
#' @export
AlphaModulateFixedEffect <- function(amt = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$AlphaModulateFixedEffect(
    amt = amt
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
