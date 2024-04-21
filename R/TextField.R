#' @title TextField
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param id id
#' @param type type
#' @param rPr rPr
#' @param pPr pPr
#' @param t t
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TextField(id = "id")
#' }
#'
#' @export
TextField <- function(id = NULL, type = NULL, rPr = NULL, pPr = NULL, t = NULL, ...) {

  py_obj <- openpyxl$drawing$text$TextField(
    id = id,
    type = type,
    rPr = rPr,
    pPr = pPr,
    t = t
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
