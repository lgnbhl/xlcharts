#' @title AuthorList
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.comments.author.html}
#'
#' @param author author
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AuthorList(author = c("author1", "author2"))
#' }
#'
#' @export
AuthorList <- function(author = list(), ...) {

  py_obj <- openpyxl$comments$author$AuthorList(
    author = author
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
