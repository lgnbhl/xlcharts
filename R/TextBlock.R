#' @title TextBlock
#'
#' @description Represents text string in a specific format
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.rich_text.html}
#'
#' @details This class is used as part of constructing a rich text strings.
#'
#' @param font font
#' @param text text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' TextBlock(font = InlineFont(), text = "text")
#' }
#'
#' @export
TextBlock <- function(font, text, ...) {

  py_obj <- openpyxl$cell$rich_text$TextBlock(
    font = font,
    text = text
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
