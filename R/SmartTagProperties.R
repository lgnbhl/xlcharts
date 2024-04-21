#' @title SmartTagProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.smart_tags.html}
#'
#' @param embed embed
#' @param show show
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SmartTagProperties()
#' }
#'
#' @export
SmartTagProperties <- function(embed = NULL, show = NULL, ...) {

  py_obj <- openpyxl$workbook$smart_tags$SmartTagProperties(
    embed = embed,
    show = show
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
