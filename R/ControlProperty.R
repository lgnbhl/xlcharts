#' @title ControlProperty
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.controls.html}
#'
#' @param anchor anchor
#' @param locked locked
#' @param defaultSize defaultSize
#' @param print _print
#' @param disabled disabled
#' @param recalcAlways recalcAlways
#' @param uiObject uiObject
#' @param autoFill autoFill
#' @param autoLine autoLine
#' @param autoPict autoPict
#' @param macro macro
#' @param altText altText
#' @param linkedCell linkedCell
#' @param listFillRange listFillRange
#' @param cf cf
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ControlProperty(
#'   anchor = ObjectAnchor(from = AnchorMarker(), to = AnchorMarker())
#' )
#' }
#'
#' @export
ControlProperty <- function(anchor = NULL, locked = TRUE, defaultSize = TRUE, print = TRUE, disabled = FALSE, recalcAlways = FALSE, uiObject = FALSE, autoFill = TRUE, autoLine = TRUE, autoPict = TRUE, macro = NULL, altText = NULL, linkedCell = NULL, listFillRange = NULL, cf = "pict", id = NULL, ...) {

  py_obj <- openpyxl$worksheet$controls$ControlProperty(
    anchor = anchor,
    locked = locked,
    defaultSize = defaultSize,
    '_print' = print,
    disabled = disabled,
    recalcAlways = recalcAlways,
    uiObject = uiObject,
    autoFill = autoFill,
    autoLine = autoLine,
    autoPict = autoPict,
    macro = macro,
    altText = altText,
    linkedCell = linkedCell,
    listFillRange = listFillRange,
    cf = cf,
    id = id
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
