#' @title ArrayDescriptor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.cell_style.html}
#'
#' @param key key
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ArrayDescriptor()
#' }
#'
#' @export
ArrayDescriptor <- function(key = NULL, ...) {

  py_obj <- openpyxl$styles$cell_style$ArrayDescriptor(
    key = key
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
