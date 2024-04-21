#' @title IgnoredErrors
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.errors.html}
#'
#' @param ignoredError ignoredError
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' IgnoredErrors()
#' }
#' @export
IgnoredErrors <- function(ignoredError = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$worksheet$errors$IgnoredErrors(
    ignoredError = ignoredError,
    extLst = extLst
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
