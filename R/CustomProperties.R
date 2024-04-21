#' @title CustomProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.custom.html}
#'
#' @param customPr customPr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomProperties()
#' }
#'
#' @export
CustomProperties <- function(customPr = list(), ...) {

  py_obj <- openpyxl$worksheet$custom$CustomProperties(
    customPr = customPr
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
