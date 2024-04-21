#' @title Border
#'
#' @description Border positioning for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.borders.html}
#'
#' @param left left
#' @param right right
#' @param top top
#' @param bottom bottom
#' @param diagonal diagonal
#' @param diagonal_direction diagonal_direction
#' @param vertical vertical
#' @param horizontal horizontal
#' @param diagonalUp diagonalUp
#' @param diagonalDown diagonalDown
#' @param outline outline
#' @param start start
#' @param end end
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Border()
#' }
#'
#' @export
Border <- function(left = NULL, right = NULL, top = NULL, bottom = NULL, diagonal = NULL, diagonal_direction = NULL, vertical = NULL, horizontal = NULL, diagonalUp = FALSE, diagonalDown = FALSE, outline = TRUE, start = NULL, end = NULL, ...) {

  py_obj <- openpyxl$styles$borders$Border(
    left = left,
    right = right,
    top = top,
    bottom = bottom,
    diagonal = diagonal,
    diagonal_direction = diagonal_direction,
    vertical = vertical,
    horizontal = horizontal,
    diagonalUp = diagonalUp,
    diagonalDown = diagonalDown,
    outline = outline,
    start = start,
    end = end
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
