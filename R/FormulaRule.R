#' @title FormulaRule
#'
#' @description Conditional formatting with custom differential style
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param formula formula
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
#' wb <- Workbook()
#' ws <- wb$active
#' ws$conditional_formatting$add('E1:E10',
#'   FormulaRule(
#'     formula = list('ISBLANK(A1)'),
#'     stopIfTrue=TRUE
#'   )
#' )
#' }
#'
#' @export
FormulaRule <- function(formula = NULL, stopIfTrue = NULL, font = NULL, border = NULL, fill = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$FormulaRule(
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
