#' @title AnchorClientData
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.spreadsheet_drawing.html}
#'
#' @param fLocksWithSheet fLocksWithSheet
#' @param fPrintsWithSheet fPrintsWithSheet
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AnchorClientData()
#' }
#'
#' @export
AnchorClientData <- function(fLocksWithSheet = NULL, fPrintsWithSheet = NULL, ...) {

  py_obj <- openpyxl$drawing$spreadsheet_drawing$AnchorClientData(
    fLocksWithSheet = fLocksWithSheet,
    fPrintsWithSheet = fPrintsWithSheet
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
