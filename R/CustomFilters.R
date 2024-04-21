#' @title CustomFilters
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param and _and
#' @param customFilter customFilter
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CustomFilters()
#' }
#'
#' @export
CustomFilters <- function(and = FALSE, customFilter = list(), ...) {

  py_obj <- openpyxl$worksheet$filters$CustomFilters(
    '_and' = and,
    customFilter = customFilter
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
