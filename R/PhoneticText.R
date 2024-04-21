#' @title PhoneticText
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.text.html}
#'
#' @param sb sb
#' @param eb eb
#' @param t t
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PhoneticText(sb = 1L, eb = 1L)
#' }
#'
#' @export
PhoneticText <- function(sb = NULL, eb = NULL, t = NULL, ...) {

  py_obj <- openpyxl$cell$text$PhoneticText(
    sb = sb,
    eb = eb,
    t = t
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
