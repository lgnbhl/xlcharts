#' @title NamedStyle
#'
#' @description Named and editable styles
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.named_styles.html}
#'
#' @param name name
#' @param font font
#' @param fill fill
#' @param border border
#' @param alignment alignment
#' @param number_format number_format
#' @param protection protection
#' @param builtinId builtinId
#' @param hidden hidden
#' @param xfId xfId
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NamedStyle()
#' }
#'
#' @export
NamedStyle <- function(name = "Normal", font = NULL, fill = NULL, border = NULL, alignment = NULL, number_format = NULL, protection = NULL, builtinId = NULL, hidden = FALSE, xfId = NULL, ...) {

  py_obj <- openpyxl$workbook$workbook$NamedStyle(
    name = name,
    font = font,
    fill = fill,
    border = border,
    alignment = alignment,
    number_format = number_format,
    protection = protection,
    builtinId = builtinId,
    hidden = hidden,
    xfId = xfId
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
