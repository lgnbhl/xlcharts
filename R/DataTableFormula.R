#' @title DataTableFormula
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.formula.html}
#'
#' @param ref ref
#' @param ca ca
#' @param dt2D dt2D
#' @param dtr dtr
#' @param r1 r1
#' @param r2 r2
#' @param del1 del1
#' @param del2 del2
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DataTableFormula(ref = "A1")
#' }
#'
#' @export
DataTableFormula <- function(ref, ca = FALSE, dt2D = FALSE, dtr = FALSE, r1 = NULL, r2 = NULL, del1 = FALSE, del2 = FALSE, ...) {

  py_obj <- openpyxl$worksheet$formula$DataTableFormula(
    ref = ref,
    ca = ca,
    dt2D = dt2D,
    dtr = dtr,
    r1 = r1,
    r2 = r2,
    del1 = del1,
    del2 = del2
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
