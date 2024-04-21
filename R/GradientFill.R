#' @title GradientFill
#'
#' @description Fill areas with gradient
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fills.html}
#'
#' @details Two types of gradient fill are supported: - A type='linear' gradient interpolates colours between a set of specified Stops, across the length of an area. The gradient is left-to-right by default, but this orientation can be modified with the degree attribute. A list of Colors can be provided instead and they will be positioned with equal distance between them. - A type='path' gradient applies a linear gradient from each edge of the area. Attributes top, right, bottom, left specify the extent of fill from the respective borders. Thus top="0.2" will fill the top 20% of the cell.
#'
#' @param type type
#' @param degree degree
#' @param left left
#' @param right right
#' @param top top
#' @param bottom bottom
#' @param stop stop
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' GradientFill()
#' }
#'
#' @export
GradientFill <- function(type = "linear", degree = 0L, left = 0L, right = 0L, top = 0L, bottom = 0L, stop = list(), ...) {

  py_obj <- openpyxl$styles$fills$GradientFill(
    type = type,
    degree = as.integer(degree),
    left = as.integer(left),
    right = as.integer(right),
    top = as.integer(top),
    bottom = as.integer(bottom),
    stop = stop
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
