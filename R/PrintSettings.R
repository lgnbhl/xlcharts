#' @title PrintSettings
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.print_settings.html}
#'
#' @param headerFooter headerFooter
#' @param pageMargins pageMargins
#' @param pageSetup pageSetup
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PrintSettings()
#' }
#'
#' @export
PrintSettings <- function(headerFooter = NULL, pageMargins = NULL, pageSetup = NULL, ...) {

  py_obj <- openpyxl$chart$print_settings$PrintSettings(
    headerFooter = headerFooter,
    pageMargins = pageMargins,
    pageSetup = pageSetup
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
