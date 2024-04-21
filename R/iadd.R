#' iadd from operator Python module
#'
#' \url{https://docs.python.org/3/library/operator.html#in-place-operators}
#'
#' @param a a
#' @param b b
#'
#' @return A Python object.
#'
#' @examples
#' \dontrun{
#' a <- "hello"
#' iadd(a = a, b = " world")
#' }
#'
#' @export
iadd <- function(a, b) {
  op <- reticulate::import("operator")
  op$iadd(a, b)
}
