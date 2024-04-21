#' @title WriteOnlyCell
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.cell.html}
#'
#' @param ws ws
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' WriteOnlyCell(ws = wb$active)
#' }
#'
#' @export
WriteOnlyCell <- function(ws = NULL, value = NULL, ...) {

  py_obj <- openpyxl$cell$cell$WriteOnlyCell(
    ws = ws,
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
