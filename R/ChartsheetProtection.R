#' @title ChartsheetProtection
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.protection.html}
#'
#' @param content content
#' @param objects objects
#' @param hashValue hashValue
#' @param spinCount spinCount
#' @param saltValue saltValue
#' @param algorithmName algorithmName
#' @param password password
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartsheetProtection()
#' }
#'
#' @export
ChartsheetProtection <- function(content = NULL, objects = NULL, hashValue = NULL, spinCount = NULL, saltValue = NULL, algorithmName = NULL, password = NULL, ...) {

  py_obj <- openpyxl$chartsheet$protection$ChartsheetProtection(
    content = content,
    objects = objects,
    hashValue = hashValue,
    spinCount = spinCount,
    saltValue = saltValue,
    algorithmName = algorithmName,
    password = password
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
