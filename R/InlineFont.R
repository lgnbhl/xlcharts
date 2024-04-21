#' @title InlineFont
#'
#' @description Font for inline text because, yes what you need are different objects with the same elements but different constraints.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.cell.text.html}
#'
#' @param rFont rFont
#' @param charset charset
#' @param family family
#' @param b b
#' @param i i
#' @param strike strike
#' @param outline outline
#' @param shadow shadow
#' @param condense condense
#' @param extend extend
#' @param color color
#' @param sz sz
#' @param u u
#' @param vertAlign vertAlign
#' @param scheme scheme
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' InlineFont()
#' }
#' @export
InlineFont <- function(rFont = NULL, charset = NULL, family = NULL, b = NULL, i = NULL, strike = NULL, outline = NULL, shadow = NULL, condense = NULL, extend = NULL, color = NULL, sz = NULL, u = NULL, vertAlign = NULL, scheme = NULL, ...) {

  py_obj <- openpyxl$cell$text$InlineFont(
    rFont = rFont,
    charset = charset,
    family = family,
    b = b,
    i = i,
    strike = strike,
    outline = outline,
    shadow = shadow,
    condense = condense,
    extend = extend,
    color = color,
    sz = sz,
    u = u,
    vertAlign = vertAlign,
    scheme = scheme
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
