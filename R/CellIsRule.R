#' @title CellIsRule
#'
#' @description Conditional formatting rule based on cell contents.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param operator operator
#' @param formula formula as list
#' @param stopIfTrue stopIfTrue
#' @param font font
#' @param border border
#' @param fill fill
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellIsRule(operator = "equal")
#' }
#'
#' @export
CellIsRule <- function(operator = NULL, formula = list(), stopIfTrue = NULL, font = NULL, border = NULL, fill = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$CellIsRule(
    operator = operator,
    formula = formula,
    stopIfTrue = stopIfTrue,
    font = font,
    border = border,
    fill = fill
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
