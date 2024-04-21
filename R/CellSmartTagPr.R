#' @title CellSmartTagPr
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.smart_tag.html}
#'
#' @param key key
#' @param val val
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellSmartTagPr(key = "key", val = "val")
#' }
#'
#' @export
CellSmartTagPr <- function(key = NULL, val = NULL, ...) {

  py_obj <- openpyxl$worksheet$smart_tag$CellSmartTagPr(
    key = key,
    val = val
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
