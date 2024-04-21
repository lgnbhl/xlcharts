#' @title ObjectAnchor
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.ole.html}
#'
#' @param from _from
#' @param to to
#' @param moveWithCells moveWithCells
#' @param sizeWithCells sizeWithCells
#' @param z_order z_order
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ObjectAnchor(from = AnchorMarker(), to = AnchorMarker())
#' }
#'
#' @export
ObjectAnchor <- function(from = NULL, to = NULL, moveWithCells = FALSE, sizeWithCells = FALSE, z_order = NULL, ...) {

  py_obj <- openpyxl$worksheet$ole$ObjectAnchor(
    '_from' = from,
    to = to,
    moveWithCells = moveWithCells,
    sizeWithCells = sizeWithCells,
    z_order = z_order
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
