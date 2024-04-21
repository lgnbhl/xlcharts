#' @title EmptyCell
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.read_only.html}
#'
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' EmptyCell()
#' }
#'
#' @export
EmptyCell <- function(...) {

  py_obj <- openpyxl$cell$read_only$EmptyCell()

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
