#' @title Stop
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fills.html}
#'
#' @param color color
#' @param position position
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Stop(color = Color(), position = 1L)
#' }
#'
#' @export
Stop <- function(color, position, ...) {

  py_obj <- openpyxl$styles$fills$Stop(
    color = color,
    position = position
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
