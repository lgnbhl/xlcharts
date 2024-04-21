#' @title Dimension
#'
#' @description Information about the display properties of a row or column.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param index index
#' @param hidden hidden
#' @param outlineLevel outlineLevel
#' @param collapsed collapsed
#' @param worksheet worksheet
#' @param visible visible
#' @param style style
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Dimension(index = 1L, hidden = NULL,
#' outlineLevel = NULL, collapsed = NULL, worksheet = NULL)
#' }
#'
#' @export
Dimension <- function(index, hidden, outlineLevel, collapsed, worksheet, visible = TRUE, style = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$Dimension(
    index = index,
    hidden = hidden,
    outlineLevel = outlineLevel,
    collapsed = collapsed,
    worksheet = worksheet,
    visible = visible,
    style = style
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
