#' @title CellWatch
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.cell_watch.html}
#'
#' @param r r
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellWatch(r = "r")
#' }
#'
#' @export
CellWatch <- function(r = NULL, ...) {

  py_obj <- openpyxl$worksheet$cell_watch$CellWatch(
    r = r
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
