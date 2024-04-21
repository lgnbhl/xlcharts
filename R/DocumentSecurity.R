#' @title DocumentSecurity
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.protection.html}
#'
#' @param workbookPassword workbookPassword
#' @param workbookPasswordCharacterSet workbookPasswordCharacterSet
#' @param revisionsPassword revisionsPassword
#' @param revisionsPasswordCharacterSet revisionsPasswordCharacterSet
#' @param lockStructure lockStructure
#' @param lockWindows lockWindows
#' @param lockRevision lockRevision
#' @param revisionsAlgorithmName revisionsAlgorithmName
#' @param revisionsHashValue revisionsHashValue
#' @param revisionsSaltValue revisionsSaltValue
#' @param revisionsSpinCount revisionsSpinCount
#' @param workbookAlgorithmName workbookAlgorithmName
#' @param workbookHashValue workbookHashValue
#' @param workbookSaltValue workbookSaltValue
#' @param workbookSpinCount workbookSpinCount
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DocumentSecurity()
#' }
#'
#' @export
DocumentSecurity <- function(workbookPassword = NULL, workbookPasswordCharacterSet = NULL, revisionsPassword = NULL, revisionsPasswordCharacterSet = NULL, lockStructure = NULL, lockWindows = NULL, lockRevision = NULL, revisionsAlgorithmName = NULL, revisionsHashValue = NULL, revisionsSaltValue = NULL, revisionsSpinCount = NULL, workbookAlgorithmName = NULL, workbookHashValue = NULL, workbookSaltValue = NULL, workbookSpinCount = NULL, ...) {

  py_obj <- openpyxl$workbook$workbook$DocumentSecurity(
    workbookPassword = workbookPassword,
    workbookPasswordCharacterSet = workbookPasswordCharacterSet,
    revisionsPassword = revisionsPassword,
    revisionsPasswordCharacterSet = revisionsPasswordCharacterSet,
    lockStructure = lockStructure,
    lockWindows = lockWindows,
    lockRevision = lockRevision,
    revisionsAlgorithmName = revisionsAlgorithmName,
    revisionsHashValue = revisionsHashValue,
    revisionsSaltValue = revisionsSaltValue,
    revisionsSpinCount = revisionsSpinCount,
    workbookAlgorithmName = workbookAlgorithmName,
    workbookHashValue = workbookHashValue,
    workbookSaltValue = workbookSaltValue,
    workbookSpinCount = workbookSpinCount
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
