#' @title TableStyleList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.table.html}
#'
#' @param count count
#' @param defaultTableStyle defaultTableStyle
#' @param defaultPivotStyle defaultPivotStyle
#' @param tableStyle tableStyle
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableStyleList()
#' }
#'
#' @export
TableStyleList <- function(count = NULL, defaultTableStyle = "TableStyleMedium9", defaultPivotStyle = "PivotStyleLight16", tableStyle = list(), ...) {

  py_obj <- openpyxl$styles$table$TableStyleList(
    count = count,
    defaultTableStyle = defaultTableStyle,
    defaultPivotStyle = defaultPivotStyle,
    tableStyle = tableStyle
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
