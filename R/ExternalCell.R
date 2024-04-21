#' @title ExternalCell
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.external_link.external.html}
#'
#' @param r r
#' @param t t
#' @param vm vm
#' @param v v
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalCell(r = "r")
#' }
#'
#' @export
ExternalCell <- function(r = NULL, t = NULL, vm = NULL, v = NULL, ...) {

  py_obj <- openpyxl$workbook$external_link$external$ExternalCell(
    r = r,
    t = t,
    vm = vm,
    v = v
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
