#' @title builtin_format_code
#'
#' @description Return one of the standard format codes by index.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.numbers.html}
#'
#' @param index index
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An character string.
#'
#' @examples
#' \dontrun{
#' builtin_format_code(index = 2L)
#' }
#'
#' @export
builtin_format_code <- function(index, ...) {

  py_obj <- openpyxl$styles$numbers$builtin_format_code(
    index = index
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
