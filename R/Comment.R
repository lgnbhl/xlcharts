#' @title Comment
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.comments.comments.html}
#'
#' @param text text
#' @param author author
#' @param height height
#' @param width width
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Comment(text = "text", author = "author")
#' }
#'
#' @export
Comment <- function(text, author, height = 79L, width = 144L, ...) {

  py_obj <- openpyxl$comments$comments$Comment(
    text = text,
    author = author,
    height = as.integer(height),
    width = as.integer(width)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
