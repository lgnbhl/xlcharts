#' @title write_stylesheet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.stylesheet.html}
#'
#' @param wb wb
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' write_stylesheet(wb = wb)
#' }
#'
#' @export
write_stylesheet <- function(wb, ...) {

  py_obj <- openpyxl$styles$stylesheet$write_stylesheet(
    wb = wb
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
