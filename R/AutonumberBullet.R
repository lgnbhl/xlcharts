#' @title AutonumberBullet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param type type
#' @param startAt startAt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AutonumberBullet(type = "hindiNumPeriod", startAt = 1L)
#' }
#'
#' @export
AutonumberBullet <- function(type = NULL, startAt = NULL, ...) {

  py_obj <- openpyxl$drawing$text$AutonumberBullet(
    type = type,
    startAt = startAt
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
