#' @title absolute_coordinate
#'
#' @description Convert a coordinate to an absolute coordinate string (B12 -> $B$12)
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @param coord_string coord_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An string.
#'
#' @examples
#' \dontrun{
#' absolute_coordinate("A1")
#' }
#'
#' @export
absolute_coordinate <- function(coord_string, ...) {

  py_obj <- openpyxl$utils$cell$absolute_coordinate(
    coord_string = coord_string
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
