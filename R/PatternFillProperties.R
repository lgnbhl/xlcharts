#' @title PatternFillProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param prst prst
#' @param fgClr fgClr
#' @param bgClr bgClr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PatternFillProperties()
#' }
#'
#' @export
PatternFillProperties <- function(prst = NULL, fgClr = NULL, bgClr = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$PatternFillProperties(
    prst = prst,
    fgClr = fgClr,
    bgClr = bgClr
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
