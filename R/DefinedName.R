#' @title DefinedName
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.defined_name.html}
#'
#' @param name name
#' @param comment comment
#' @param customMenu customMenu
#' @param description description
#' @param help help
#' @param statusBar statusBar
#' @param localSheetId localSheetId
#' @param hidden hidden
#' @param vbProcedure vbProcedure
#' @param xlm xlm
#' @param functionGroupId functionGroupId
#' @param shortcutKey shortcutKey
#' @param publishToServer publishToServer
#' @param workbookParameter workbookParameter
#' @param attr_text attr_text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DefinedName(name = "name")
#' }
#'
#' @export
DefinedName <- function(name = NULL, comment = NULL, customMenu = NULL, description = NULL, help = NULL, statusBar = NULL, localSheetId = NULL, hidden = NULL, vbProcedure = NULL, xlm = NULL, functionGroupId = NULL, shortcutKey = NULL, publishToServer = NULL, workbookParameter = NULL, attr_text = NULL, ...) {

  py_obj <- openpyxl$workbook$defined_name$DefinedName(
    name = name,
    comment = comment,
    customMenu = customMenu,
    description = description,
    help = help,
    statusBar = statusBar,
    localSheetId = localSheetId,
    hidden = hidden,
    vbProcedure = vbProcedure,
    xlm = xlm,
    functionGroupId = functionGroupId,
    shortcutKey = shortcutKey,
    publishToServer = publishToServer,
    workbookParameter = workbookParameter,
    attr_text = attr_text
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
