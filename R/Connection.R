#' @title Connection
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.connector.html}
#'
#' @param id id
#' @param idx idx
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Connection(id = 1L, idx = 1L)
#' }
#'
#' @export
Connection <- function(id = NULL, idx = NULL, ...) {

  py_obj <- openpyxl$drawing$connector$Connection(
    id = id,
    idx = idx
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
