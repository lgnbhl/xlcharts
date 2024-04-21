#' @title Spacing
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param spcPct spcPct
#' @param spcPts spcPts
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Spacing()
#' }
#'
#' @export
Spacing <- function(spcPct = NULL, spcPts = NULL, ...) {

  py_obj <- openpyxl$drawing$text$Spacing(
    spcPct = spcPct,
    spcPts = spcPts
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
