#' @title CellWatches
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.cell_watch.html}
#'
#' @param cellWatch cellWatch
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellWatches()
#' }
#'
#' @export
CellWatches <- function(cellWatch = list(), ...) {

  py_obj <- openpyxl$worksheet$cell_watch$CellWatches(
    cellWatch = cellWatch
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
