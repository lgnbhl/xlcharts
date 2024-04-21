#' @title CustomFilter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param operator operator
#' @param val val
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomFilter(operator = "equal", val = 1L)
#' }
#'
#' @export
CustomFilter <- function(operator = NULL, val = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$CustomFilter(
    operator = operator,
    val = val
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
