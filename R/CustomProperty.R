#' @title CustomProperty
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.custom.html}
#'
#' @param name name
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomProperty(name = "name")
#' }
#'
#' @export
CustomProperty <- function(name = NULL, ...) {

  py_obj <- openpyxl$worksheet$custom$CustomProperty(
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
