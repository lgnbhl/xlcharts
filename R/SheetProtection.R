#' @title SheetProtection
#'
#' @description Information about protection of various aspects of a sheet. TRUE values
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.protection.html}
#'
#' @details mean that protection for the object or action is active This is the
#' **default** when protection is active, ie. users cannot do something
#'
#' @param sheet sheet
#' @param objects objects
#' @param scenarios scenarios
#' @param formatCells formatCells
#' @param formatRows formatRows
#' @param formatColumns formatColumns
#' @param insertColumns insertColumns
#' @param insertRows insertRows
#' @param insertHyperlinks insertHyperlinks
#' @param deleteColumns deleteColumns
#' @param deleteRows deleteRows
#' @param selectLockedCells selectLockedCells
#' @param selectUnlockedCells selectUnlockedCells
#' @param sort sort
#' @param autoFilter autoFilter
#' @param pivotTables pivotTables
#' @param password password
#' @param algorithmName algorithmName
#' @param saltValue saltValue
#' @param spinCount spinCount
#' @param hashValue hashValue
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' SheetProtection()
#' }
#'
#' @export
SheetProtection <- function(sheet = FALSE, objects = FALSE, scenarios = FALSE, formatCells = TRUE, formatRows = TRUE, formatColumns = TRUE, insertColumns = TRUE, insertRows = TRUE, insertHyperlinks = TRUE, deleteColumns = TRUE, deleteRows = TRUE, selectLockedCells = FALSE, selectUnlockedCells = FALSE, sort = TRUE, autoFilter = TRUE, pivotTables = TRUE, password = NULL, algorithmName = NULL, saltValue = NULL, spinCount = NULL, hashValue = NULL, ...) {

  py_obj <- openpyxl$worksheet$protection$SheetProtection(
    sheet = sheet,
    objects = objects,
    scenarios = scenarios,
    formatCells = formatCells,
    formatRows = formatRows,
    formatColumns = formatColumns,
    insertColumns = insertColumns,
    insertRows = insertRows,
    insertHyperlinks = insertHyperlinks,
    deleteColumns = deleteColumns,
    deleteRows = deleteRows,
    selectLockedCells = selectLockedCells,
    selectUnlockedCells = selectUnlockedCells,
    sort = sort,
    autoFilter = autoFilter,
    pivotTables = pivotTables,
    password = password,
    algorithmName = algorithmName,
    saltValue = saltValue,
    spinCount = spinCount,
    hashValue = hashValue
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
