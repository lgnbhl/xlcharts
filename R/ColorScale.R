#' @title ColorScale
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.formatting.rule.html}
#'
#' @param cfvo cfvo
#' @param color color
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' first <- FormatObject(type = 'min')
#' last <- FormatObject(type = 'max')
#' # colors match the format objects:
#' colors <- list(Color('AA0000'), Color('00AA00'))
#' cs2 <- ColorScale(cfvo = list(first, last), color = colors)
#' }
#'
#' @export
ColorScale <- function(cfvo = NULL, color = NULL, ...) {

  py_obj <- openpyxl$formatting$rule$ColorScale(
    cfvo = cfvo,
    color = color
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
