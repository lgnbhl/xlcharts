#' @title LineProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.line.html}
#'
#' @param w w
#' @param cap cap
#' @param cmpd cmpd
#' @param algn algn
#' @param noFill noFill
#' @param solidFill solidFill
#' @param gradFill gradFill
#' @param pattFill pattFill
#' @param prstDash prstDash
#' @param custDash custDash
#' @param round round
#' @param bevel bevel
#' @param miter miter
#' @param headEnd headEnd
#' @param tailEnd tailEnd
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' LineProperties()
#' }
#' @export
LineProperties <- function(w = NULL, cap = NULL, cmpd = NULL, algn = NULL, noFill = NULL, solidFill = NULL, gradFill = NULL, pattFill = NULL, prstDash = NULL, custDash = NULL, round = NULL, bevel = NULL, miter = NULL, headEnd = NULL, tailEnd = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$line$LineProperties(
    w = w,
    cap = cap,
    cmpd = cmpd,
    algn = algn,
    noFill = noFill,
    solidFill = solidFill,
    gradFill = gradFill,
    pattFill = pattFill,
    prstDash = prstDash,
    custDash = custDash,
    round = round,
    bevel = bevel,
    miter = miter,
    headEnd = headEnd,
    tailEnd = tailEnd,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
