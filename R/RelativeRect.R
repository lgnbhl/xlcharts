#' @title RelativeRect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.fill.html}
#'
#' @param l l
#' @param t t
#' @param r r
#' @param b b
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RelativeRect()
#' }
#'
#' @export
RelativeRect <- function(l = NULL, t = NULL, r = NULL, b = NULL, ...) {

  py_obj <- openpyxl$drawing$fill$RelativeRect(
    l = l,
    t = t,
    r = r,
    b = b
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
