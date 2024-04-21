#' @title coordinate_from_string
#'
#' @description Convert a coordinate string like 'B12' to a list ('B', 12)
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.cell.html}
#'
#' @param coord_string coord_string
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A list.
#'
#' @examples
#' \dontrun{
#' coordinate_from_string(coord_string = "A1")
#' }
#'
#' @export
coordinate_from_string <- function(coord_string, ...) {

  py_obj <- openpyxl$utils$cell$coordinate_from_string(
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
