#' @title ColorMapping
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.colors.html}
#'
#' @param bg1 bg1
#' @param tx1 tx1
#' @param bg2 bg2
#' @param tx2 tx2
#' @param accent1 accent1
#' @param accent2 accent2
#' @param accent3 accent3
#' @param accent4 accent4
#' @param accent5 accent5
#' @param accent6 accent6
#' @param hlink hlink
#' @param folHlink folHlink
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColorMapping()
#' }
#'
#' @export
ColorMapping <- function(bg1 = "lt1", tx1 = "dk1", bg2 = "lt2", tx2 = "dk2", accent1 = "accent1", accent2 = "accent2", accent3 = "accent3", accent4 = "accent4", accent5 = "accent5", accent6 = "accent6", hlink = "hlink", folHlink = "folHlink", extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$colors$ColorMapping(
    bg1 = bg1,
    tx1 = tx1,
    bg2 = bg2,
    tx2 = tx2,
    accent1 = accent1,
    accent2 = accent2,
    accent3 = accent3,
    accent4 = accent4,
    accent5 = accent5,
    accent6 = accent6,
    hlink = hlink,
    folHlink = folHlink,
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
