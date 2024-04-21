#' @title AbsoluteAnchor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param pos pos
#' @param ext ext
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AbsoluteAnchor()
#' }
#'
#' @export
AbsoluteAnchor <- function(pos = NULL, ext = NULL, ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$AbsoluteAnchor(
    pos = pos,
    ext = ext
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
