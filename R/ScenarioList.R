#' @title ScenarioList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.scenario.html}
#'
#' @param scenario scenario
#' @param current current
#' @param show show
#' @param sqref sqref
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ScenarioList()
#' }
#'
#' @export
ScenarioList <- function(scenario = list(), current = NULL, show = NULL, sqref = NULL, ...) {

  py_obj <- openpyxl$worksheet$scenario$ScenarioList(
    scenario = scenario,
    current = current,
    show = show,
    sqref = sqref
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
