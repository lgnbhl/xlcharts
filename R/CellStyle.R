#' @title CellStyle
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.cell_style.html}
#'
#' @param numFmtId numFmtId
#' @param fontId fontId
#' @param fillId fillId
#' @param borderId borderId
#' @param xfId xfId
#' @param quotePrefix quotePrefix
#' @param pivotButton pivotButton
#' @param applyNumberFormat applyNumberFormat
#' @param applyFont applyFont
#' @param applyFill applyFill
#' @param applyBorder applyBorder
#' @param applyAlignment applyAlignment
#' @param applyProtection applyProtection
#' @param alignment alignment
#' @param protection protection
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CellStyle()
#' }
#'
#' @export
CellStyle <- function(numFmtId = 0L, fontId = 0L, fillId = 0L, borderId = 0L, xfId = NULL, quotePrefix = NULL, pivotButton = NULL, applyNumberFormat = NULL, applyFont = NULL, applyFill = NULL, applyBorder = NULL, applyAlignment = NULL, applyProtection = NULL, alignment = NULL, protection = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$styles$cell_style$CellStyle(
    numFmtId = as.integer(numFmtId),
    fontId = as.integer(fontId),
    fillId = as.integer(fillId),
    borderId = as.integer(borderId),
    xfId = xfId,
    quotePrefix = quotePrefix,
    pivotButton = pivotButton,
    applyNumberFormat = applyNumberFormat,
    applyFont = applyFont,
    applyFill = applyFill,
    applyBorder = applyBorder,
    applyAlignment = applyAlignment,
    applyProtection = applyProtection,
    alignment = alignment,
    protection = protection,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
