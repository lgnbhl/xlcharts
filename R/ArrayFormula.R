#' @title ArrayFormula
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.formula.html}
#'
#' @param ref ref
#' @param text text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ArrayFormula(ref = "A1")
#' }
#'
#' @export
ArrayFormula <- function(ref, text = NULL, ...) {

  py_obj <- openpyxl$worksheet$formula$ArrayFormula(
    ref = ref,
    text = text
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
