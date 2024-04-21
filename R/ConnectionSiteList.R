#' @title ConnectionSiteList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.geometry.html}
#'
#' @param cxn cxn
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ConnectionSiteList()
#' }
#'
#' @export
ConnectionSiteList <- function(cxn = NULL, ...) {

  py_obj <- openpyxl$drawing$geometry$ConnectionSiteList(
    cxn = cxn
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
