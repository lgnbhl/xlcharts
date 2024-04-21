#' @title SmartTagList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.smart_tags.html}
#'
#' @param smartTagType smartTagType
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SmartTagList()
#' }
#'
#' @export
SmartTagList <- function(smartTagType = list(), ...) {

  py_obj <- openpyxl$workbook$smart_tags$SmartTagList(
    smartTagType = smartTagType
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
