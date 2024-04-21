#' @title TwoCellAnchor
#'
#' @description Note that the argument `_from` has been transformed to `from`.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param editAs editAs
#' @param from _from
#' @param to to
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TwoCellAnchor()
#' }
#'
#' @export
TwoCellAnchor <- function(editAs = NULL, from = NULL, to = NULL, ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$TwoCellAnchor(
    editAs = editAs,
    '_from' = from,
    to = to
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
