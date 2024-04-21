#' @title RowBreak
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.pagebreak.html}
#'
#' @param count count
#' @param manualBreakCount manualBreakCount
#' @param brk brk
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RowBreak()
#' }
#'
#' @export
RowBreak <- function(count = NULL, manualBreakCount = NULL, brk = list(), ...) {

  py_obj <- openpyxl$worksheet$pagebreak$RowBreak(
    count = count,
    manualBreakCount = manualBreakCount,
    brk = brk
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
