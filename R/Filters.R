#' @title Filters
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.filters.html}
#'
#' @param blank blank
#' @param calendarType calendarType
#' @param filter filter
#' @param dateGroupItem dateGroupItem
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Filters()
#' }
#'
#' @export
Filters <- function(blank = NULL, calendarType = NULL, filter = list(), dateGroupItem = list(), ...) {

  py_obj <- openpyxl$worksheet$filters$Filters(
    blank = blank,
    calendarType = calendarType,
    filter = filter,
    dateGroupItem = dateGroupItem
  )

    # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
