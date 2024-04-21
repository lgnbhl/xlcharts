#' @title DimensionHolder
#'
#' @description Allow columns to be grouped
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.dimensions.html}
#'
#' @param worksheet worksheet
#' @param reference reference
#' @param default_factory default_factory
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' ws <- wb$active
#' DimensionHolder(worksheet = ws)
#' }
#'
#' @export
DimensionHolder <- function(worksheet, reference = "index", default_factory = NULL, ...) {

  py_obj <- openpyxl$worksheet$dimensions$DimensionHolder(
    worksheet = worksheet,
    reference = reference,
    default_factory = default_factory
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
