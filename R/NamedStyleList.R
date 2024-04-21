#' @title NamedStyleList
#'
#' @description Named styles are editable and can be applied to multiple objects
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.named_styles.html}
#'
#' @details As only the index is stored in referencing objects the order mus
#' be preserved.
#'
#' @param iterable iterable
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NamedStyleList()
#' }
#'
#' @export
NamedStyleList <- function(iterable = list(), ...) {

  py_obj <- openpyxl$workbook$workbook$NamedStyleList(
    iterable = iterable
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
