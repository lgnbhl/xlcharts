#' @title WorksheetProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.properties.html}
#'
#' @param codeName codeName
#' @param enableFormatConditionsCalculation enableFormatConditionsCalculation
#' @param filterMode filterMode
#' @param published published
#' @param syncHorizontal syncHorizontal
#' @param syncRef syncRef
#' @param syncVertical syncVertical
#' @param transitionEvaluation transitionEvaluation
#' @param transitionEntry transitionEntry
#' @param tabColor tabColor
#' @param outlinePr outlinePr
#' @param pageSetUpPr pageSetUpPr
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WorksheetProperties()
#' }
#'
#' @export
WorksheetProperties <- function(codeName = NULL, enableFormatConditionsCalculation = NULL, filterMode = NULL, published = NULL, syncHorizontal = NULL, syncRef = NULL, syncVertical = NULL, transitionEvaluation = NULL, transitionEntry = NULL, tabColor = NULL, outlinePr = NULL, pageSetUpPr = NULL, ...) {

  py_obj <- openpyxl$worksheet$properties$WorksheetProperties(
    codeName = codeName,
    enableFormatConditionsCalculation = enableFormatConditionsCalculation,
    filterMode = filterMode,
    published = published,
    syncHorizontal = syncHorizontal,
    syncRef = syncRef,
    syncVertical = syncVertical,
    transitionEvaluation = transitionEvaluation,
    transitionEntry = transitionEntry,
    tabColor = tabColor,
    outlinePr = outlinePr,
    pageSetUpPr = pageSetUpPr
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
