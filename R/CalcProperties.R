#' @title CalcProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.properties.html}
#'
#' @param calcId calcId
#' @param calcMode calcMode
#' @param fullCalcOnLoad fullCalcOnLoad
#' @param refMode refMode
#' @param iterate iterate
#' @param iterateCount iterateCount
#' @param iterateDelta iterateDelta
#' @param fullPrecision fullPrecision
#' @param calcCompleted calcCompleted
#' @param calcOnSave calcOnSave
#' @param concurrentCalc concurrentCalc
#' @param concurrentManualCount concurrentManualCount
#' @param forceFullCalc forceFullCalc
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CalcProperties()
#' }
#'
#' @export
CalcProperties <- function(calcId = 124519L, calcMode = NULL, fullCalcOnLoad = TRUE, refMode = NULL, iterate = NULL, iterateCount = NULL, iterateDelta = NULL, fullPrecision = NULL, calcCompleted = NULL, calcOnSave = NULL, concurrentCalc = NULL, concurrentManualCount = NULL, forceFullCalc = NULL, ...) {

  py_obj <- openpyxl$workbook$properties$CalcProperties(
    calcId = as.integer(calcId),
    calcMode = calcMode,
    fullCalcOnLoad = fullCalcOnLoad,
    refMode = refMode,
    iterate = iterate,
    iterateCount = iterateCount,
    iterateDelta = iterateDelta,
    fullPrecision = fullPrecision,
    calcCompleted = calcCompleted,
    calcOnSave = calcOnSave,
    concurrentCalc = concurrentCalc,
    concurrentManualCount = concurrentManualCount,
    forceFullCalc = forceFullCalc
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
