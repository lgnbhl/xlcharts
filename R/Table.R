#' @title Table
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param id id
#' @param displayName displayName
#' @param ref ref
#' @param name name
#' @param comment comment
#' @param tableType tableType
#' @param headerRowCount headerRowCount
#' @param insertRow insertRow
#' @param insertRowShift insertRowShift
#' @param totalsRowCount totalsRowCount
#' @param totalsRowShown totalsRowShown
#' @param published published
#' @param headerRowDxfId headerRowDxfId
#' @param dataDxfId dataDxfId
#' @param totalsRowDxfId totalsRowDxfId
#' @param headerRowBorderDxfId headerRowBorderDxfId
#' @param tableBorderDxfId tableBorderDxfId
#' @param totalsRowBorderDxfId totalsRowBorderDxfId
#' @param headerRowCellStyle headerRowCellStyle
#' @param dataCellStyle dataCellStyle
#' @param totalsRowCellStyle totalsRowCellStyle
#' @param connectionId connectionId
#' @param autoFilter autoFilter
#' @param sortState sortState
#' @param tableColumns tableColumns
#' @param tableStyleInfo tableStyleInfo
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Table(displayName = "displayName")
#' }
#'
#' @export
Table <- function(id = 1L, displayName, ref = NULL, name = NULL, comment = NULL, tableType = NULL, headerRowCount = 1L, insertRow = NULL, insertRowShift = NULL, totalsRowCount = NULL, totalsRowShown = NULL, published = NULL, headerRowDxfId = NULL, dataDxfId = NULL, totalsRowDxfId = NULL, headerRowBorderDxfId = NULL, tableBorderDxfId = NULL, totalsRowBorderDxfId = NULL, headerRowCellStyle = NULL, dataCellStyle = NULL, totalsRowCellStyle = NULL, connectionId = NULL, autoFilter = NULL, sortState = NULL, tableColumns = list(), tableStyleInfo = NULL, extLst = NULL, ...) {

  if(missing(displayName)) stop("must pass displayName.", call. = FALSE)

  py_obj <- openpyxl$worksheet$table$Table(
    id = as.integer(id),
    displayName = displayName,
    ref = ref,
    name = name,
    comment = comment,
    tableType = tableType,
    headerRowCount = as.integer(headerRowCount),
    insertRow = insertRow,
    insertRowShift = insertRowShift,
    totalsRowCount = totalsRowCount,
    totalsRowShown = totalsRowShown,
    published = published,
    headerRowDxfId = headerRowDxfId,
    dataDxfId = dataDxfId,
    totalsRowDxfId = totalsRowDxfId,
    headerRowBorderDxfId = headerRowBorderDxfId,
    tableBorderDxfId = tableBorderDxfId,
    totalsRowBorderDxfId = totalsRowBorderDxfId,
    headerRowCellStyle = headerRowCellStyle,
    dataCellStyle = dataCellStyle,
    totalsRowCellStyle = totalsRowCellStyle,
    connectionId = connectionId,
    autoFilter = autoFilter,
    sortState = sortState,
    tableColumns = tableColumns,
    tableStyleInfo = tableStyleInfo,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
