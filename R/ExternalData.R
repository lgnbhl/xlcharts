#' @title ExternalData
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.chartspace.html}
#'
#' @param autoUpdate autoUpdate
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExternalData(id = "id")
#' }
#'
#' @export
ExternalData <- function(autoUpdate = NULL, id = NULL, ...) {

  py_obj <- openpyxl$chart$chartspace$ExternalData(
    autoUpdate = autoUpdate,
    id = id
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
