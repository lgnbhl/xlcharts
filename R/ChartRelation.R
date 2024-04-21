#' @title ChartRelation
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.relation.html}
#'
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ChartRelation(id = "id")
#' }
#'
#' @export
ChartRelation <- function(id, ...) {

  py_obj <- openpyxl$drawing$relation$ChartRelation(
    id = id
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
