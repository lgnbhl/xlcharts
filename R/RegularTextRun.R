#' @title RegularTextRun
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param rPr rPr
#' @param t t
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RegularTextRun()
#' }
#'
#' @export
RegularTextRun <- function(rPr = NULL, t = "", ...) {

  py_obj <- openpyxl$drawing$text$RegularTextRun(
    rPr = rPr,
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
