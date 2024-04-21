#' @title Control
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.controls.html}
#'
#' @param controlPr controlPr
#' @param shapeId shapeId
#' @param name name
#' @param ... Additional arguments, i.e. kwargs.
#' @return An openpyxl Python object.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Control(
#'   controlPr = ControlProperty(
#'     anchor = ObjectAnchor(from = AnchorMarker(), to = AnchorMarker())
#'     ),
#'   shapeId = 1L
#' )
#' }
#'
#' @export
Control <- function(controlPr = NULL, shapeId = NULL, name = NULL, ...) {

  py_obj <- openpyxl$worksheet$controls$Control(
    controlPr = controlPr,
    shapeId = shapeId,
    name = name
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
