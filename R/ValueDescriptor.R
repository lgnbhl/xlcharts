#' @title ValueDescriptor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' Expected type depends upon type attribute of parent :-(
#'
#' Most values should be numeric BUT they can also be cell references
#'
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ValueDescriptor()
#' }
#'
#' @export
ValueDescriptor <- function(...) {

  py_obj <- openpyxl$formatting$rule$ValueDescriptor()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
