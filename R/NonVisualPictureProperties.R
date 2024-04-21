#' @title NonVisualPictureProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.picture.html}
#'
#' @param preferRelativeResize preferRelativeResize
#' @param picLocks picLocks
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NonVisualPictureProperties()
#' }
#'
#' @export
NonVisualPictureProperties <- function(preferRelativeResize = NULL, picLocks = NULL, extLst = NULL, ...) {

  py_obj <- openpyxl$drawing$picture$NonVisualPictureProperties(
    preferRelativeResize = preferRelativeResize,
    picLocks = picLocks,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
