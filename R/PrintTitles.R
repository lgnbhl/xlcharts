#' @title PrintTitles
#'
#' @description Contains at least either a range of rows or columns
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.print_settings.html}
#'
#' @param cols cols
#' @param rows rows
#' @param title title
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PrintTitles()
#' }
#'
#' @export
PrintTitles <- function(cols = NULL, rows = NULL, title = "", ...) {

  py_obj <- openpyxl$worksheet$print_settings$PrintTitles(
    cols = cols,
    rows = rows,
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
