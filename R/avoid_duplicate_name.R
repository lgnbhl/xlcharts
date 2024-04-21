#' @title avoid_duplicate_name
#'
#' @description Naive check to see whether name already exists.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.child.html}
#'
#' @details If name does exist suggest a name using an incrementer
#' Duplicates are case insensitive
#'
#' @param names names
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An character string.
#'
#' @examples
#' \dontrun{
#' avoid_duplicate_name(names = "name", value = "name")
#' }
#'
#' @export
avoid_duplicate_name <- function(names, value, ...) {

  py_obj <- openpyxl$workbook$child$avoid_duplicate_name(
    names = names,
    value = value
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
