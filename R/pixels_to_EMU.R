#' @title pixels_to_EMU
#'
#' @description 1 pixel = 9525 EMUs
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html}
#'
#' @param value value
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return A numeric value.
#'
#' @examples
#' \dontrun{
#' pixels_to_EMU(value = 1L)
#' }
#'
#' @export
pixels_to_EMU <- function(value, ...) {

  py_obj <- openpyxl$utils$units$pixels_to_EMU(
    value = value
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
