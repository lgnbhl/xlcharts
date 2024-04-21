#' @title Protection
#'
#' @description Protection options for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.protection.html}
#'
#' @param locked locked
#' @param hidden hidden
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Protection()
#' }
#'
#' @export
Protection <- function(locked = TRUE, hidden = FALSE, ...) {

  py_obj <- openpyxl$styles$protection$Protection(
    locked = locked,
    hidden = hidden
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
