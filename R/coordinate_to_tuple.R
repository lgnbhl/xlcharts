#' @title coordinate_to_tuple
#'
#' @description Convert an Excel style coordinate to (row, column) list
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @param coordinate coordinate
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A list.
#'
#' @examples
#' \dontrun{
#' coordinate_to_tuple(coordinate = "A1")
#' }
#'
#' @export
coordinate_to_tuple <- function(coordinate, ...) {

  py_obj <- openpyxl$utils$cell$coordinate_to_tuple(
    coordinate = coordinate
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
