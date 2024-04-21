#' @title HeaderFooterItem
#'
#' @description Header or footer item
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.header_footer.html}
#'
#' @param left left
#' @param right right
#' @param center center
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' HeaderFooterItem()
#' }
#'
#' @export
HeaderFooterItem <- function(left = NULL, right = NULL, center = NULL, ...) {

  py_obj <- openpyxl$worksheet$header_footer$HeaderFooterItem(
    left = left,
    right = right,
    center = center
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
