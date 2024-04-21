#' @title PatternFill
#'
#' @description Area fill patterns for use in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fills.html}
#'
#' @details Caution: if you do not specify a fill_type, other attributes will have
#' no effect !
#'
#' @param patternType patternType
#' @param fill_type fill_type
#' @param start_color start_color
#' @param end_color end_color
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @section Caution: if you do not specify a fill_type, other attributes will have:
#' no effect !
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PatternFill()
#' }
#'
#' @export
PatternFill <- function(patternType = NULL, fill_type = NULL, start_color = NULL, end_color = NULL, ...) {

  py_obj <- openpyxl$styles$fills$PatternFill(
    patternType = patternType,
    fill_type = fill_type,
    start_color = start_color,
    end_color = end_color
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
