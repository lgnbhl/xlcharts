#' @title Drawing
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.drawing.html}
#'
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Drawing()
#' }
#'
#' @export
Drawing <- function(id = NULL, ...) {

  py_obj <- openpyxl$worksheet$drawing$Drawing(
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
