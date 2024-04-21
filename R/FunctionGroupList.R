#' @title FunctionGroupList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.function_group.html}
#'
#' @param builtInGroupCount builtInGroupCount
#' @param functionGroup functionGroup
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FunctionGroupList()
#' }
#'
#' @export
FunctionGroupList <- function(builtInGroupCount = 16L, functionGroup = list(), ...) {

  py_obj <- openpyxl$workbook$function_group$FunctionGroupList(
    builtInGroupCount = as.integer(builtInGroupCount),
    functionGroup = functionGroup
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
