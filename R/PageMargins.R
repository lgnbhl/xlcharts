#' @title PageMargins
#'
#' @description Information about page margins for view/print layouts.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.page.html}
#'
#' @details Standard values (in inches)
#' left, right = 0.75
#' top, bottom = 1
#' header, footer = 0.5
#'
#' @param left left
#' @param right right
#' @param top top
#' @param bottom bottom
#' @param header header
#' @param footer footer
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PageMargins()
#' }
#'
#' @export
PageMargins <- function(left = 0.75, right = 0.75, top = 1L, bottom = 1L, header = 0.5, footer = 0.5, ...) {

  py_obj <- openpyxl$worksheet$page$PageMargins(
    left = left,
    right = right,
    top = as.integer(top),
    bottom = as.integer(bottom),
    header = header,
    footer = footer
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
