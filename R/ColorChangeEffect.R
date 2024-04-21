#' @title ColorChangeEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param useA useA
#' @param clrFrom clrFrom
#' @param clrTo clrTo
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' # issue using xlcharts::Color() function as built from
#' # class 'openpyxl.styles.colors.Color' while
#' # ColorChangeEffect() arguments require 'openpyxl.drawing.effect.Color'
#' openpyxl <- reticulate::import("openpyxl")
#' ColorChangeEffect(
#'   clrFrom = openpyxl$drawing$effect$Color(),
#'   clrTo = openpyxl$drawing$effect$Color()
#' )
#' }
#'
#' @export
ColorChangeEffect <- function(useA = NULL, clrFrom = NULL, clrTo = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$ColorChangeEffect(
    useA = useA,
    clrFrom = clrFrom,
    clrTo = clrTo
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
