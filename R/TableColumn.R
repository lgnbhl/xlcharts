#' @title TableColumn
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.table.html}
#'
#' @param id id
#' @param uniqueName uniqueName
#' @param name name
#' @param totalsRowFunction totalsRowFunction
#' @param totalsRowLabel totalsRowLabel
#' @param queryTableFieldId queryTableFieldId
#' @param headerRowDxfId headerRowDxfId
#' @param dataDxfId dataDxfId
#' @param totalsRowDxfId totalsRowDxfId
#' @param headerRowCellStyle headerRowCellStyle
#' @param dataCellStyle dataCellStyle
#' @param totalsRowCellStyle totalsRowCellStyle
#' @param calculatedColumnFormula calculatedColumnFormula
#' @param totalsRowFormula totalsRowFormula
#' @param xmlColumnPr xmlColumnPr
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TableColumn(id = 1L, name = "name")
#' }
#'
#' @export
TableColumn <- function(id = NULL, uniqueName = NULL, name = NULL, totalsRowFunction = NULL, totalsRowLabel = NULL, queryTableFieldId = NULL, headerRowDxfId = NULL, dataDxfId = NULL, totalsRowDxfId = NULL, headerRowCellStyle = NULL, dataCellStyle = NULL, totalsRowCellStyle = NULL, calculatedColumnFormula = NULL, totalsRowFormula = NULL, xmlColumnPr = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$worksheet$table$TableColumn(
    id = id,
    uniqueName = uniqueName,
    name = name,
    totalsRowFunction = totalsRowFunction,
    totalsRowLabel = totalsRowLabel,
    queryTableFieldId = queryTableFieldId,
    headerRowDxfId = headerRowDxfId,
    dataDxfId = dataDxfId,
    totalsRowDxfId = totalsRowDxfId,
    headerRowCellStyle = headerRowCellStyle,
    dataCellStyle = dataCellStyle,
    totalsRowCellStyle = totalsRowCellStyle,
    calculatedColumnFormula = calculatedColumnFormula,
    totalsRowFormula = totalsRowFormula,
    xmlColumnPr = xmlColumnPr,
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
