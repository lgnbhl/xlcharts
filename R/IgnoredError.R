#' @title IgnoredError
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.errors.html}
#'
#' @param sqref sqref
#' @param evalError evalError
#' @param twoDigitTextYear twoDigitTextYear
#' @param numberStoredAsText numberStoredAsText
#' @param formula formula
#' @param formulaRange formulaRange
#' @param unlockedFormula unlockedFormula
#' @param emptyCellReference emptyCellReference
#' @param listDataValidation listDataValidation
#' @param calculatedColumn calculatedColumn
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' IgnoredError()
#' }
#' @export
IgnoredError <- function(sqref = NULL, evalError = FALSE, twoDigitTextYear = FALSE, numberStoredAsText = FALSE, formula = FALSE, formulaRange = FALSE, unlockedFormula = FALSE, emptyCellReference = FALSE, listDataValidation = FALSE, calculatedColumn = FALSE, ...) {

  py_obj <- openpyxl$worksheet$errors$IgnoredError(
    sqref = sqref,
    evalError = evalError,
    twoDigitTextYear = twoDigitTextYear,
    numberStoredAsText = numberStoredAsText,
    formula = formula,
    formulaRange = formulaRange,
    unlockedFormula = unlockedFormula,
    emptyCellReference = emptyCellReference,
    listDataValidation = listDataValidation,
    calculatedColumn = calculatedColumn
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
