#' @title ConditionalFormattingList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.formatting.html}
#'
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ConditionalFormattingList()
#' }
#'
#' @export
ConditionalFormattingList <- function(...) {

  py_obj <- openpyxl$formatting$formatting$ConditionalFormattingList()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
