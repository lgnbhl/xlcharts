#' @title Outline
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.properties.html}
#'
#' @param applyStyles applyStyles
#' @param summaryBelow summaryBelow
#' @param summaryRight summaryRight
#' @param showOutlineSymbols showOutlineSymbols
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Outline()
#' }
#'
#' @export
Outline <- function(applyStyles = NULL, summaryBelow = NULL, summaryRight = NULL, showOutlineSymbols = NULL, ...) {

  py_obj <- openpyxl$worksheet$properties$Outline(
    applyStyles = applyStyles,
    summaryBelow = summaryBelow,
    summaryRight = summaryRight,
    showOutlineSymbols = showOutlineSymbols
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
