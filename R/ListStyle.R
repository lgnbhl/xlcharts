#' @title ListStyle
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param defPPr defPPr
#' @param lvl1pPr lvl1pPr
#' @param lvl2pPr lvl2pPr
#' @param lvl3pPr lvl3pPr
#' @param lvl4pPr lvl4pPr
#' @param lvl5pPr lvl5pPr
#' @param lvl6pPr lvl6pPr
#' @param lvl7pPr lvl7pPr
#' @param lvl8pPr lvl8pPr
#' @param lvl9pPr lvl9pPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ListStyle()
#' }
#' @export
ListStyle <- function(defPPr = NULL, lvl1pPr = NULL, lvl2pPr = NULL, lvl3pPr = NULL, lvl4pPr = NULL, lvl5pPr = NULL, lvl6pPr = NULL, lvl7pPr = NULL, lvl8pPr = NULL, lvl9pPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$text$ListStyle(
    defPPr = defPPr,
    lvl1pPr = lvl1pPr,
    lvl2pPr = lvl2pPr,
    lvl3pPr = lvl3pPr,
    lvl4pPr = lvl4pPr,
    lvl5pPr = lvl5pPr,
    lvl6pPr = lvl6pPr,
    lvl7pPr = lvl7pPr,
    lvl8pPr = lvl8pPr,
    lvl9pPr = lvl9pPr,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
