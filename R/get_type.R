#' @title get_type
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.cell.html}
#'
#' @param t t
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' get_type(t = "t", value = "value")
#' }
#'
#' @export
get_type <- function(t, value, ...) {

  py_obj <- openpyxl$cell$cell$get_type(
    t = t,
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
