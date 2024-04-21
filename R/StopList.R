#' @title StopList
#'
#' @description A sequence (list or list) that may only contain objects of the declared
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fills.html}
#'
#' @details type
#'
#' @param name name
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' StopList()
#' }
#'
#' @export
StopList <- function(name = NULL, ...) {

  py_obj <- openpyxl$styles$fills$StopList(
    name = name
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
