#' @title Bevel
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param w w integer
#' @param h h integer
#' @param prst prst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Bevel(w = 1L, h = 1L)
#' }
#'
#' @export
Bevel <- function(w = NULL, h = NULL, prst = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$Bevel(
    w = w,
    h = h,
    prst = prst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
