#' @title MergeCell
#'
#' @description Represents a range in a sheet: title and coordinates.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.merge.html}
#'
#' @details This object is used to perform operations on ranges, like: - shift, expand or shrink
#' - union/intersection with another sheet range, We can check whether a range is: - equal or not equal to another,
#' - disjoint of another,
#' - contained in another. We can get: - the size of a range.
#' - the range bounds (vertices)
#' - the coordinates,
#' - the string representation,
#'
#' @param ref ref
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' MergeCell(ref = "A1")
#' }
#'
#' @export
MergeCell <- function(ref = NULL, ...) {

  py_obj <- openpyxl$worksheet$merge$MergeCell(
    ref = ref
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
