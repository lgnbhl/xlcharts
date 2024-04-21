#' @title StyleArray
#'
#' @description Simplified named list with an array
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.cell_style.html}
#'
#' @param args args
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' StyleArray()
#' }
#'
#' @export
StyleArray <- function(args = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), ...) {

  py_obj <- openpyxl$styles$cell_style$StyleArray(
    args = args
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
