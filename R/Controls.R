#' @title Controls
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.controls.html}
#'
#' @param control control
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Controls()
#' }
#'
#' @export
Controls <- function(control = list(), ...) {

  py_obj <- openpyxl$worksheet$controls$Controls(
    control = control
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
