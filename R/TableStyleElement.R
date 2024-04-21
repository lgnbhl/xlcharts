#' @title TableStyleElement
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.table.html}
#'
#' @param type type
#' @param size size
#' @param dxfId dxfId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableStyleElement(type = "secondSubtotalRow")
#' }
#'
#' @export
TableStyleElement <- function(type = NULL, size = NULL, dxfId = NULL, ...) {

  py_obj <- openpyxl$styles$table$TableStyleElement(
    type = type,
    size = size,
    dxfId = dxfId
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
