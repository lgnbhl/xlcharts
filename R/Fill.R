#' @title Fill
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fills.html}
#'
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Fill()
#' }
#'
#' @export
Fill <- function(...) {

  py_obj <- openpyxl$styles$fills$Fill()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
