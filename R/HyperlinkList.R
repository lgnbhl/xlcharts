#' @title HyperlinkList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.hyperlink.html}
#'
#' @param hyperlink hyperlink
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' HyperlinkList()
#' }
#'
#' @export
HyperlinkList <- function(hyperlink = list(), ...) {

  py_obj <- openpyxl$worksheet$hyperlink$HyperlinkList(
    hyperlink = hyperlink
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
