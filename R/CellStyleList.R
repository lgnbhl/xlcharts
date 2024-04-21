#' @title CellStyleList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.cell_style.html}
#'
#' @param count count
#' @param xf xf
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellStyleList()
#' }
#'
#' @export
CellStyleList <- function(count = NULL, xf = list(), ...) {

  py_obj <- openpyxl$styles$cell_style$CellStyleList(
    count = count,
    xf = xf
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
