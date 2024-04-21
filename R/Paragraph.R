#' @title Paragraph
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param pPr pPr
#' @param endParaRPr endParaRPr
#' @param r r
#' @param br br
#' @param fld fld
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Paragraph()
#' }
#'
#' @export
Paragraph <- function(pPr = NULL, endParaRPr = NULL, r = NULL, br = NULL, fld = NULL, ...) {

  py_obj <- openpyxl$drawing$text$Paragraph(
    pPr = pPr,
    endParaRPr = endParaRPr,
    r = r,
    br = br,
    fld = fld
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
