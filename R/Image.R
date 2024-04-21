#' @title Image
#'
#' @description Image in a spreadsheet. You must have the Pillow Python library
#' installed, which can be installed using `install_pillow()`.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.image.html}
#'
#' @param img img
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' install_pillow()
#' image_path <- system.file('extdata/logo.png',package='xlcharts')
#' Image(img = image_path)
#' }
#' @export
Image <- function(img, ...) {

  py_obj <- openpyxl$drawing$image$Image(
    img = img
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
