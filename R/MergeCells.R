#' @title MergeCells
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.merge.html}
#'
#' @param count count
#' @param mergeCell mergeCell
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' MergeCells()
#' }
#'
#' @export
MergeCells <- function(count = NULL, mergeCell = list(), ...) {

  py_obj <- openpyxl$worksheet$merge$MergeCells(
    count = count,
    mergeCell = mergeCell
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
