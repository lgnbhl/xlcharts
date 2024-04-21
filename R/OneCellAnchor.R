#' @title OneCellAnchor
#'
#' @description Note that the argument `_from` has been transformed to `from`.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param from from
#' @param ext ext
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' OneCellAnchor()
#' }
#'
#' @export
OneCellAnchor <- function(from = NULL, ext = NULL, ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$OneCellAnchor(
    `_from` = from,
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
