#' @title ExtensionList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.descriptors.excel.html}
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.errors.html}
#'
#' @param ext ext
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ExtensionList()
#' }
#'
#' @export
ExtensionList <- function(ext = list(), ...) {

  # https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.errors.html
  # py_obj <- openpyxl$worksheet$errors$ExtensionList(
  #   ext = ext
  # )
  # https://openpyxl.readthedocs.io/en/stable/api/openpyxl.descriptors.excel.html
  py_obj <- openpyxl$descriptors$excel$ExtensionList(
    ext = ext
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
