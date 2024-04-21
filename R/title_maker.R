#' @title title_maker
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.title.html}
#'
#' @param text text
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' title_maker(text = "text")
#' }
#'
#' @export
title_maker <- function(text, ...) {

  py_obj <- openpyxl$chart$title$title_maker(
    text = text
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
