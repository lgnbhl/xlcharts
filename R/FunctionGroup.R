#' @title FunctionGroup
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.function_group.html}
#'
#' @param name name
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FunctionGroup(name = "name")
#' }
#'
#' @export
FunctionGroup <- function(name = NULL, ...) {

  py_obj <- openpyxl$workbook$function_group$FunctionGroup(
    name = name
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
