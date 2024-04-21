#' @title FormatObject
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param type type
#' @param val val
#' @param gte gte
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FormatObject(type = "num")
#' }
#'
#' @export
FormatObject <- function(type, val = NULL, gte = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$FormatObject(
    type = type,
    val = val,
    gte = gte,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
