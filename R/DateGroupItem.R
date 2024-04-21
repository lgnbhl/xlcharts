#' @title DateGroupItem
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param year year
#' @param month month
#' @param day day
#' @param hour hour
#' @param minute minute
#' @param second second
#' @param dateTimeGrouping dateTimeGrouping
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DateGroupItem(year = 2024, dateTimeGrouping = "year")
#' }
#'
#' @export
DateGroupItem <- function(year = NULL, month = NULL, day = NULL, hour = NULL, minute = NULL, second = NULL, dateTimeGrouping = NULL, ...) {

  py_obj <- openpyxl$worksheet$filters$DateGroupItem(
    year = year,
    month = month,
    day = day,
    hour = hour,
    minute = minute,
    second = second,
    dateTimeGrouping = dateTimeGrouping
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
