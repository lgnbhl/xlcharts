#' @title Font
#'
#' @description Font options used in styles.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.styles.fonts.html}
#'
#' @param name name
#' @param sz sz
#' @param b b
#' @param i i
#' @param charset charset
#' @param u u
#' @param strike strike
#' @param color color
#' @param scheme scheme
#' @param family family
#' @param size size
#' @param bold bold
#' @param italic italic
#' @param strikethrough strikethrough
#' @param underline underline
#' @param vertAlign vertAlign
#' @param outline outline
#' @param shadow shadow
#' @param condense condense
#' @param extend extend
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Font()
#' }
#'
#' @export
Font <- function(name = NULL, sz = NULL, b = NULL, i = NULL, charset = NULL, u = NULL, strike = NULL, color = NULL, scheme = NULL, family = NULL, size = NULL, bold = NULL, italic = NULL, strikethrough = NULL, underline = NULL, vertAlign = NULL, outline = NULL, shadow = NULL, condense = NULL, extend = NULL, ...) {

  py_obj <- openpyxl$styles$fonts$Font(
    name = name,
    sz = sz,
    b = b,
    i = i,
    charset = charset,
    u = u,
    strike = strike,
    color = color,
    scheme = scheme,
    family = family,
    size = size,
    bold = bold,
    italic = italic,
    strikethrough = strikethrough,
    underline = underline,
    vertAlign = vertAlign,
    outline = outline,
    shadow = shadow,
    condense = condense,
    extend = extend
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
