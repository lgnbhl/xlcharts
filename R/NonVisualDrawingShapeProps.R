#' @title NonVisualDrawingShapeProps
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.properties.html}
#'
#' @param spLocks spLocks
#' @param txBox txBox
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NonVisualDrawingShapeProps()
#' }
#'
#' @export
NonVisualDrawingShapeProps <- function(spLocks = NULL, txBox = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$properties$NonVisualDrawingShapeProps(
    spLocks = spLocks,
    txBox = txBox,
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
