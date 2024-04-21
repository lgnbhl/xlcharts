#' @title Scenario
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.scenario.html}
#'
#' @param inputCells inputCells
#' @param name name
#' @param locked locked
#' @param hidden hidden
#' @param count count
#' @param user user
#' @param comment comment
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Scenario(name = "name")
#' }
#'
#' @export
Scenario <- function(inputCells = list(), name = NULL, locked = FALSE, hidden = FALSE, count = NULL, user = NULL, comment = NULL, ...) {

  py_obj <- openpyxl$worksheet$scenario$Scenario(
    inputCells = inputCells,
    name = name,
    locked = locked,
    hidden = hidden,
    count = count,
    user = user,
    comment = comment
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
