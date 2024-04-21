#' @title ColorList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.colors.html}
#'
#' @param indexedColors indexedColors
#' @param mruColors mruColors
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ColorList()
#' }
#'
#' @export
ColorList <- function(indexedColors = list(), mruColors = list(), ...) {

  py_obj <- openpyxl$styles$colors$ColorList(
    indexedColors = indexedColors,
    mruColors = mruColors
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
