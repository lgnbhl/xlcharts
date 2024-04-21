#' @title FileSharing
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.protection.html}
#'
#' @param readOnlyRecommended readOnlyRecommended
#' @param userName userName
#' @param reservationPassword reservationPassword
#' @param algorithmName algorithmName
#' @param hashValue hashValue
#' @param saltValue saltValue
#' @param spinCount spinCount
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FileSharing()
#' }
#'
#' @export
FileSharing <- function(readOnlyRecommended = NULL, userName = NULL, reservationPassword = NULL, algorithmName = NULL, hashValue = NULL, saltValue = NULL, spinCount = NULL, ...) {

  py_obj <- openpyxl$workbook$protection$FileSharing(
    readOnlyRecommended = readOnlyRecommended,
    userName = userName,
    reservationPassword = reservationPassword,
    algorithmName = algorithmName,
    hashValue = hashValue,
    saltValue = saltValue,
    spinCount = spinCount
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
