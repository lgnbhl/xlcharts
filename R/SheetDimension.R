#' @title SheetDimension
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param ref ref
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SheetDimension(ref = "ref")
#' }
#'
#' @export
SheetDimension <- function(ref = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$SheetDimension(
    ref = ref
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
