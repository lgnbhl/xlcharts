#' @title builtin_format_id
#'
#' @description Return the id of a standard style.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.numbers.html}
#'
#' @param fmt fmt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' builtin_format_id(fmt = NULL)
#' }
#'
#' @export
builtin_format_id <- function(fmt, ...) {

  py_obj <- openpyxl$styles$numbers$builtin_format_id(
    fmt = fmt
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
