#' @title DifferentialStyle
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.differential.html}
#'
#' @param font font
#' @param numFmt numFmt
#' @param fill fill
#' @param alignment alignment
#' @param border border
#' @param protection protection
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DifferentialStyle()
#' }
#'
#' @export
DifferentialStyle <- function(font = NULL, numFmt = NULL, fill = NULL, alignment = NULL, border = NULL, protection = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$styles$differential$DifferentialStyle(
    font = font,
    numFmt = numFmt,
    fill = fill,
    alignment = alignment,
    border = border,
    protection = protection,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
