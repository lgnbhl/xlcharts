#' @title WorkbookProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.properties.html}
#'
#' @param date1904 date1904
#' @param dateCompatibility dateCompatibility
#' @param showObjects showObjects
#' @param showBorderUnselectedTables showBorderUnselectedTables
#' @param filterPrivacy filterPrivacy
#' @param promptedSolutions promptedSolutions
#' @param showInkAnnotation showInkAnnotation
#' @param backupFile backupFile
#' @param saveExternalLinkValues saveExternalLinkValues
#' @param updateLinks updateLinks
#' @param codeName codeName
#' @param hidePivotFieldList hidePivotFieldList
#' @param showPivotChartFilter showPivotChartFilter
#' @param allowRefreshQuery allowRefreshQuery
#' @param publishItems publishItems
#' @param checkCompatibility checkCompatibility
#' @param autoCompressPictures autoCompressPictures
#' @param refreshAllConnections refreshAllConnections
#' @param defaultThemeVersion defaultThemeVersion
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WorkbookProperties()
#' }
#'
#' @export
WorkbookProperties <- function(date1904 = NULL, dateCompatibility = NULL, showObjects = NULL, showBorderUnselectedTables = NULL, filterPrivacy = NULL, promptedSolutions = NULL, showInkAnnotation = NULL, backupFile = NULL, saveExternalLinkValues = NULL, updateLinks = NULL, codeName = NULL, hidePivotFieldList = NULL, showPivotChartFilter = NULL, allowRefreshQuery = NULL, publishItems = NULL, checkCompatibility = NULL, autoCompressPictures = NULL, refreshAllConnections = NULL, defaultThemeVersion = NULL, ...) {

  py_obj <- openpyxl$workbook$properties$WorkbookProperties(
    date1904 = date1904,
    dateCompatibility = dateCompatibility,
    showObjects = showObjects,
    showBorderUnselectedTables = showBorderUnselectedTables,
    filterPrivacy = filterPrivacy,
    promptedSolutions = promptedSolutions,
    showInkAnnotation = showInkAnnotation,
    backupFile = backupFile,
    saveExternalLinkValues = saveExternalLinkValues,
    updateLinks = updateLinks,
    codeName = codeName,
    hidePivotFieldList = hidePivotFieldList,
    showPivotChartFilter = showPivotChartFilter,
    allowRefreshQuery = allowRefreshQuery,
    publishItems = publishItems,
    checkCompatibility = checkCompatibility,
    autoCompressPictures = autoCompressPictures,
    refreshAllConnections = refreshAllConnections,
    defaultThemeVersion = defaultThemeVersion
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
