#' @title LineEndProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.line.html}
#'
#' @param type type
#' @param w w
#' @param len len
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LineEndProperties()
#' }
#' @export
LineEndProperties <- function(type = NULL, w = NULL, len = NULL, ...) {

  py_obj <- openpyxl$drawing$line$LineEndProperties(
    type = type,
    w = w,
    len = len
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
