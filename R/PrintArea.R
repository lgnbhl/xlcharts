#' @title PrintArea
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.print_settings.html}
#'
#' @param ranges ranges
#' @param title title
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PrintArea()
#' }
#'
#' @export
PrintArea <- function(ranges = list(), title = "", ...) {

  py_obj <- openpyxl$worksheet$print_settings$PrintArea(
    ranges = ranges,
    title = title
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
