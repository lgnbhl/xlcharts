#' @title WebPublishing
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.workbook.web.html}
#'
#' @param css css
#' @param thicket thicket
#' @param longFileNames longFileNames
#' @param vml vml
#' @param allowPng allowPng
#' @param targetScreenSize targetScreenSize
#' @param dpi dpi
#' @param codePage codePage
#' @param characterSet characterSet
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' WebPublishing()
#' }
#'
#' @export
WebPublishing <- function(css = NULL, thicket = NULL, longFileNames = NULL, vml = NULL, allowPng = NULL, targetScreenSize = "800x600", dpi = NULL, codePage = NULL, characterSet = NULL, ...) {

  py_obj <- openpyxl$workbook$web$WebPublishing(
    css = css,
    thicket = thicket,
    longFileNames = longFileNames,
    vml = vml,
    allowPng = allowPng,
    targetScreenSize = targetScreenSize,
    dpi = dpi,
    codePage = codePage,
    characterSet = characterSet
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
