#' @title FileVersion
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.properties.html}
#'
#' @param appName appName
#' @param lastEdited lastEdited
#' @param lowestEdited lowestEdited
#' @param rupBuild rupBuild
#' @param codeName codeName
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' FileVersion()
#' }
#'
#' @export
FileVersion <- function(appName = NULL, lastEdited = NULL, lowestEdited = NULL, rupBuild = NULL, codeName = NULL, ...) {

  py_obj <- openpyxl$workbook$properties$FileVersion(
    appName = appName,
    lastEdited = lastEdited,
    lowestEdited = lowestEdited,
    rupBuild = rupBuild,
    codeName = codeName
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
