#' @title HeaderFooter
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.header_footer.html}
#'
#' @param differentOddEven differentOddEven
#' @param differentFirst differentFirst
#' @param scaleWithDoc scaleWithDoc
#' @param alignWithMargins alignWithMargins
#' @param oddHeader oddHeader
#' @param oddFooter oddFooter
#' @param evenHeader evenHeader
#' @param evenFooter evenFooter
#' @param firstHeader firstHeader
#' @param firstFooter firstFooter
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' HeaderFooter()
#' }
#'
#' @export
HeaderFooter <- function(differentOddEven = NULL, differentFirst = NULL, scaleWithDoc = NULL, alignWithMargins = NULL, oddHeader = NULL, oddFooter = NULL, evenHeader = NULL, evenFooter = NULL, firstHeader = NULL, firstFooter = NULL, ...) {

  py_obj <- openpyxl$worksheet$header_footer$HeaderFooter(
    differentOddEven = differentOddEven,
    differentFirst = differentFirst,
    scaleWithDoc = scaleWithDoc,
    alignWithMargins = alignWithMargins,
    oddHeader = oddHeader,
    oddFooter = oddFooter,
    evenHeader = evenHeader,
    evenFooter = evenFooter,
    firstHeader = firstHeader,
    firstFooter = firstFooter
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
