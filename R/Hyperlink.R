#' @title Hyperlink
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.hyperlink.html}
#'
#' @param ref ref
#' @param location location
#' @param tooltip tooltip
#' @param display display
#' @param id id
#' @param target target
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Hyperlink(ref = "ref")
#' }
#'
#' @export
Hyperlink <- function(ref = NULL, location = NULL, tooltip = NULL, display = NULL, id = NULL, target = NULL, ...) {

  py_obj <- openpyxl$worksheet$hyperlink$Hyperlink(
    ref = ref,
    location = location,
    tooltip = tooltip,
    display = display,
    id = id,
    target = target
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
