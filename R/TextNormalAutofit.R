#' @title TextNormalAutofit
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param fontScale fontScale
#' @param lnSpcReduction lnSpcReduction
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TextNormalAutofit(fontScale = 1L, lnSpcReduction = 1L)
#' }
#'
#' @export
TextNormalAutofit <- function(fontScale = NULL, lnSpcReduction = NULL, ...) {

  py_obj <- openpyxl$drawing$text$TextNormalAutofit(
    fontScale = fontScale,
    lnSpcReduction = lnSpcReduction
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
