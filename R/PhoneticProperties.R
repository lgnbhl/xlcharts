#' @title PhoneticProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.text.html}
#'
#' @param fontId fontId
#' @param type type
#' @param alignment alignment
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PhoneticProperties(fontId = 1L)
#' }
#'
#' @export
PhoneticProperties <- function(fontId = NULL, type = NULL, alignment = NULL, ...) {

  py_obj <- openpyxl$cell$text$PhoneticProperties(
    fontId = fontId,
    type = type,
    alignment = alignment
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
